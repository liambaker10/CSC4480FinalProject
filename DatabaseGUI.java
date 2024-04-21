import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;

public class DatabaseGUI extends JFrame {
    private JTextField queryField;
    private JTextArea resultArea;
    private Connection connection;

    public DatabaseGUI() {
        setTitle("Database GUI");
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
        add(new JScrollPane(resultArea), BorderLayout.CENTER);

        // Connect to the database
        connectToDatabase();
    }

    private void connectToDatabase() {
        try {
            // Replace placeholders with your database credentials
            String url = "jdbc:oracle:thin:@csdb.csc.villanova.edu:1521/orcl.villanova.edu";
            String username = "lbaker";
            String password = "fL02400036";

            connection = DriverManager.getConnection(url, username, password);
            System.out.println("Connected to the database");
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Failed to connect to the database: " + e.getMessage(), "Error",
                    JOptionPane.ERROR_MESSAGE);
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
        } catch (SQLException e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(this, "Error executing SQL query: " + e.getMessage(), "Error",
                    JOptionPane.ERROR_MESSAGE);
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new DatabaseGUI().setVisible(true);
            }
        });
    }
}
