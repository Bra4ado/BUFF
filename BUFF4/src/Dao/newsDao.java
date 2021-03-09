package Dao;

import java.sql.*;
import java.sql.PreparedStatement;

import enity.news;
import enity.user;
import util.DBUtil;
import util.DateUtil;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class newsDao {
    Connection connection = null;

    public newsDao(String name, String mysqlpassword) throws ClassNotFoundException, SQLException {
        //数据库驱动
        Class.forName("com.mysql.jdbc.Driver");
        this.connection = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/buff", "root", "admin");
    }

    public void showConnect() {
        System.out.println(this.connection);
    }

    public int getTotal() {
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

            String sql = "select count(*) from news";

            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return total;
    }

    public void add(String content, user user, Date createDate) {
        String sql = "insert into news values(null,?,?,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ps.setString(1, content);
            ps.setInt(2, user.getuserId());
            ps.setDate(3, DateUtil.d2t(createDate));

            ps.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();}
    }

    public void delete(int id) {
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
            String sql = "delete from news where id = " + id;
            s.execute(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public news get(int id) {
        news bean = new news();
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
            String sql = "select * from news where id = " + id;
            ResultSet rs = s.executeQuery(sql);
            if (rs.next()) {
                int uid = rs.getInt("uid");
                Date createDate = DateUtil.t2d(rs.getTimestamp("createDate"));
                String content = rs.getString("content");

                user users = new userDao("root","admin").getUser("author");

                bean.setContent(content);
                bean.setUser(users);
                bean.setCreateDate(createDate);
                bean.setId(id);
            }

        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return bean;
    }


}




