package pkg;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

public class GuestBook {
    public static void main(String[] args) {
        try {
            System.out.println(getAllPosts());
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
        return connection;
    }

    public static List<Post> getAllPosts() throws SQLException, ClassNotFoundException {
        ArrayList<Post> posts = new ArrayList<>();

        try (Connection connection = getConnection();
             ResultSet resultSet = connection.createStatement().executeQuery("SELECT * FROM posts");) {
            while (resultSet.next()) {
                Post post = new Post();
                post.setId(resultSet.getInt("id"));
                post.setText(resultSet.getString("text"));
                posts.add(post);
            }
        }
        return posts;
    }

    public static void addPost(Post p) throws SQLException, ClassNotFoundException {
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement("INSERT INTO posts(id, text) VALUES (?, ?)");) {
            ps.setLong(1, p.getId());
            ps.setString(2, p.getText());
            ps.execute();
        }
    }

    public static void deletePost(int id) throws SQLException, ClassNotFoundException {
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement("DELETE FROM posts WHERE id=?");) {
            ps.setLong(1, id);
            ps.execute();
        }
    }

    public static String getFormattedDate() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd.MM.yyyy HH:mm");
        return sdf.format(new Date());
    }
}
