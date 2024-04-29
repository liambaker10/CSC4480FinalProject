import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class DatabaseGUI extends JFrame {
    private JTextField queryField;
    private JTextArea resultArea;
    private Connection connection;

    private String url = "jdbc:oracle:thin:@csdb.csc.villanova.edu:1521/orcl.villanova.edu";
    private String username = "lbaker";
    private String password = "fL02400036";

    public DatabaseGUI() {
        try {
            UIManager.setLookAndFeel(UIManager.getCrossPlatformLookAndFeelClassName());
            for (UIManager.LookAndFeelInfo info : UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (Exception e) {
            System.err.println("Could not set Look and Feel");
        }

        setTitle("Music Database GUI");
        setSize(600, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());

        // Query panel
        JPanel queryPanel = new JPanel();
        queryPanel.setLayout(new BorderLayout());
        queryField = new JTextField();
        queryPanel.add(queryField, BorderLayout.CENTER);
        JButton executeButton = new JButton("Execute");
        executeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                executeQuery();
            }
        });
        queryPanel.add(executeButton, BorderLayout.EAST);
        add(queryPanel, BorderLayout.NORTH);

        // Result area
        resultArea = new JTextArea();
        resultArea.setEditable(false);
        resultArea.setTabSize(10);
        resultArea.setBackground(Color.BLUE);
        add(new JScrollPane(resultArea), BorderLayout.CENTER);

        // Connect to the database
        connectToDatabase();
    }

    private void connectToDatabase() {
        try {
            connection = DriverManager.getConnection(url, username, password);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(this, "Failed to connect to the database: " + e.getMessage(), "Error", JOptionPane.ERROR_MESSAGE);
        }
    }

    private void executeQuery() {
        String sqlQuery = queryField.getText();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(sqlQuery);

            StringBuilder resultBuilder = new StringBuilder();
            ResultSetMetaData metaData = resultSet.getMetaData();
            int columnCount = metaData.getColumnCount();
            for (int i = 1; i <= columnCount; i++) {
                resultBuilder.append(metaData.getColumnName(i)).append("\t");
            }
            resultBuilder.append("\n");

            while (resultSet.next()) {
                for (int i = 1; i <= columnCount; i++) {
                    resultBuilder.append(resultSet.getString(i)).append("\t");
                }
                resultBuilder.append("\n");
            }

            resultArea.setText(resultBuilder.toString());

            // Automatically adjust tab size based on content
            int longestColumnNameLength = getLongestColumnNameLength(metaData);
            resultArea.setTabSize(longestColumnNameLength * 2); // Adjust tab size based on column name length

        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error executing SQL query: " + e.getMessage(), "Error",
                    JOptionPane.ERROR_MESSAGE);
        }
    }

    private int getLongestColumnNameLength(ResultSetMetaData metaData) throws SQLException {
        int columnCount = metaData.getColumnCount();
        int longestLength = 0;
        for (int i = 1; i <= columnCount; i++) {
            String columnName = metaData.getColumnName(i);
            if (columnName.length() > longestLength) {
                longestLength = columnName.length();
            }
        }
        return longestLength;
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            DatabaseGUI gui = new DatabaseGUI();
            gui.setVisible(true);

            // Parameters for creating and displaying a playlist
            String playlistUsername = "johndoe";  // The username of the playlist owner
            String genreName = "Rock";  // The genre to create a playlist from

            // Create a playlist and display it in the GUI's result area
            gui.createAndDisplayPlaylist(playlistUsername, genreName);
        });
    }

    private void createAndDisplayPlaylist(String playlistUsername, String genreName) {
        try {
            // SQL to get userID from username
            String userIDQuery = "SELECT userID FROM applicationUser WHERE username = ?";
            PreparedStatement psUser = connection.prepareStatement(userIDQuery);
            psUser.setString(1, playlistUsername);
            ResultSet rsUser = psUser.executeQuery();

            if (!rsUser.next()) {
                resultArea.setText("User not found.");
                return;
            }
            int userID = rsUser.getInt("userID");

            // SQL to find songs by genre
            String songQuery = "SELECT songID FROM song JOIN genre ON song.genreID = genre.genreID WHERE genre.name = ?";
            PreparedStatement psSong = connection.prepareStatement(songQuery);
            psSong.setString(1, genreName);
            ResultSet rsSong = psSong.executeQuery();

            // SQL to create a new playlist
            String insertPlaylist = "INSERT INTO playlist (userID) VALUES (?)";
            PreparedStatement psInsertPlaylist = connection.prepareStatement(insertPlaylist, Statement.RETURN_GENERATED_KEYS);
            psInsertPlaylist.setInt(1, userID);
            psInsertPlaylist.executeUpdate();
            ResultSet rsPlaylist = psInsertPlaylist.getGeneratedKeys();

            if (!rsPlaylist.next()) {
                resultArea.setText("Failed to create a playlist.");
                return;
            }
            int playlistID = rsPlaylist.getInt(1);

            // Add songs to the playlist
            while (rsSong.next()) {
                int songID = rsSong.getInt("songID");
                String insertSong = "INSERT INTO playlist_song (playlistID, songID) VALUES (?, ?)";
                PreparedStatement psInsertSong = connection.prepareStatement(insertSong);
                psInsertSong.setInt(1, playlistID);
                psInsertSong.setInt(2, songID);
                psInsertSong.executeUpdate();
            }

            // Display the playlist and songs
            StringBuilder displayText = new StringBuilder("Playlist for " + playlistUsername + ":\n");
            String fetchPlaylistSongs = "SELECT title FROM song WHERE songID IN (SELECT songID FROM playlist_song WHERE playlistID = ?)";
            PreparedStatement psDisplay = connection.prepareStatement(fetchPlaylistSongs);
            psDisplay.setInt(1, playlistID);
            ResultSet rsDisplay = psDisplay.executeQuery();
            while (rsDisplay.next()) {
                displayText.append(rsDisplay.getString("title")).append("\n");
            }
            resultArea.setText(displayText.toString());
        } catch (SQLException ex) {
            resultArea.setText("Error: " + ex.getMessage());
            ex.printStackTrace();
        }
    }
}
