package Dao;

import com.mysql.jdbc.PreparedStatement;
import enity.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class userDao {
    Connection connection=null;


    public userDao(String name, String mysqlpassword) throws ClassNotFoundException, SQLException {
        //数据库驱动
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/buff", "root", "admin");
    }



    public void showConnect() {
        System.out.println(this.connection);
    }

    public void insert(String Name, String Pwd, String steamid) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("INSERT into user values (null,?,?,?)");
        //prep.setInt(1,userId);
        prep.setString(1, Name);
        prep.setString(2, Pwd);
        prep.setString(3, steamid);
        prep.execute();
    }

    public void delete(int id) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("delete from user where id=?");
        prep.setInt(1, id);
        prep.execute();
    }

    public user getUser(String userName) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select *from user where name=?");
        prep.setString(1, userName);
        prep.execute();
        ResultSet resultSet = prep.getResultSet();
        if (resultSet.next()) {
            String name = resultSet.getString("name");
            int id = resultSet.getInt("id");
            String pwd = resultSet.getString("pwd");
            String steamID = resultSet.getString("steamurl");
            return new user(name, id, pwd, steamID);
        } else {
            return null;
        }
    }

    public user getUserById(int idid) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select *from user where id=?");
        prep.setInt(1, idid);
        prep.execute();
        ResultSet resultSet = prep.getResultSet();
        if (resultSet.next()) {
            String name = resultSet.getString("name");
            int id = resultSet.getInt("id");
            String pwd = resultSet.getString("pwd");
            String steamID = resultSet.getString("steamurl");
            return new user(name, id, pwd, steamID);
        } else {
            return null;
        }
    }

    //链表结构返回所有的user数据
    public  ArrayList<user> getAllUser() throws SQLException {
        ArrayList<user> userList = new ArrayList<user>();
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select *from user ");
        prep.execute();
        // ResultSet它起到的作用就是完成了查询结果的存储功能，而且只能读取一次，不能够来回的滚动读取。
        ResultSet resultSet = prep.getResultSet();
        while (resultSet.next()) {
            String name = resultSet.getString("name");
            int id = resultSet.getInt("id");
            String pwd = resultSet.getString("pwd");
            String steamid = resultSet.getString("steamurl");
            userList.add(new user(name, id, pwd, steamid));
        }
        return userList;
    }

    public void close() throws SQLException {
        connection.close();
    }

    public user check(String userName, String userPwd) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select user.pwd from user where name =?");
        prep.setString(1, userName);
        prep.execute();
        ResultSet resultSet = prep.getResultSet();
        if (resultSet.next()) {
            String password1 = resultSet.getString("pwd");
            if (userPwd.equals(password1)) {
                return getUser(userName);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public boolean check_name(String userName) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select user.pwd from user where name =?");
        prep.setString(1, userName);
        prep.execute();
        ResultSet resultSet2 = prep.getResultSet();
        if (resultSet2.next()) {
            String password1 = resultSet2.getString("pwd");
            if (password1!=null){
                return false;
            }
            else{
                return true;
            }
        } else {
            return true;
        }

    }

    public user check_email(String name, String email) throws SQLException {
        PreparedStatement prep = (PreparedStatement) connection.prepareStatement("select user.name from user where steamurl =?");
        prep.setString(1, email);
        prep.execute();
        ResultSet resultSet = prep.getResultSet();
        if (resultSet.next()) {
            String userName = resultSet.getString("name");
            if (name.equals(userName)) {
                return getUser(userName);
            } else {
                return null;
            }
        } else {
            return null;
        }
    }

    public user update(String name, String email){
    return null;
    }

}