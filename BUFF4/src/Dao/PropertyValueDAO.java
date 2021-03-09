package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import enity.Category;
import enity.Property;
import enity.PropertyValue;
import enity.user;
import util.DBUtil;

public class PropertyValueDAO {

    public int getTotal() {
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

            String sql = "select count(*) from PropertyValue";

            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return total;
    }

    public void add(PropertyValue bean) {

        String sql = "insert into PropertyValue values(null,?,?,?,?,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);) {

            ps.setInt(1, bean.getProperty().getId());
            ps.setInt(2, bean.getUser().getuserId());
            ps.setInt(3, bean.getskinid());
            ps.setFloat(4, bean.getskinAbrase());
            ps.setInt(5, bean.getValue());

            ps.execute();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                bean.setId(id);
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public void update(PropertyValue bean) {

        String sql = "update PropertyValue set  value=?  where id = ?";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ps.setInt(1, bean.getValue());

            ps.setInt(2, bean.getId());

            /*System.out.println(bean.getValue());
            System.out.println(bean.getId());*/

            ps.execute();

        } catch (SQLException e) {

            e.printStackTrace();
        }

    }

    public void delete(int id) {

        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

            String sql = "delete from PropertyValue where id = " + id;

            s.execute(sql);

        } catch (SQLException e) {

            e.printStackTrace();
        }
    }

    public PropertyValue get(int id) {
        PropertyValue bean = new PropertyValue();

        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

            String sql = "select * from PropertyValue where id = " + id;

            ResultSet rs = s.executeQuery(sql);

            if (rs.next()) {

                int cid = rs.getInt("cid");
                int uid = rs.getInt("uid");
                int skinid = rs.getInt("skinid");
                float skinabrase = rs.getFloat("skinabrase");
                int value = rs.getInt("value");

                Property property = new PropertyDAO().get(cid);
                user user = new userDao("root","admin").getUserById(uid);

                bean.setId(id);
                bean.setProperty(property);
                bean.setUser(user);
                bean.setskinId(skinid);
                bean.setskinAbrase(skinabrase);
                bean.setValue(value);

            }

        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return bean;
    }

    public List<PropertyValue> getAllSkin() {

        List<PropertyValue> beans = new ArrayList<PropertyValue>();

        String sql = "select * from PropertyValue ";

        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ResultSet rs = ps.executeQuery(sql);

            while (rs.next()) {
                PropertyValue bean = new PropertyValue();

                int id = rs.getInt("id");
                int cid = rs.getInt("cid");
                int uid = rs.getInt("uid");
                int value = rs.getInt("value");
                int skinid = rs.getInt("skinid");
                float skinabrase = rs.getFloat("skinabrase");

                user user = new userDao("root","admin").getUserById(uid);
                Property property = new PropertyDAO().get(cid);

                bean.setId(id);
                bean.setProperty(property);
                bean.setUser(user);
                bean.setskinId(skinid);
                bean.setskinAbrase(skinabrase);
                bean.setValue(value);

                beans.add(bean);
            }
        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return beans;
    }

    public List<PropertyValue> list_byUser(int uid) {
        List<PropertyValue> beans = new ArrayList<PropertyValue>();

        String sql = "select * from PropertyValue where uid = ? order by cid desc";

        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ps.setInt(1, uid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                PropertyValue bean = new PropertyValue();

                int id = rs.getInt("id");
                int cid = rs.getInt("cid");
                int value = rs.getInt("value");
                int skinid = rs.getInt("skinid");
                float skinabrase = rs.getFloat("skinabrase");

                user user = new userDao("root","admin").getUserById(uid);

                Property property = new PropertyDAO().get(cid);

                bean.setUser(user);
                bean.setProperty(property);
                bean.setValue(value);
                bean.setskinId(skinid);
                bean.setskinAbrase(skinabrase);
                bean.setId(id);

                beans.add(bean);
            }
        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return beans;
    }

    public List<PropertyValue> list_byProperty(int cid) {

        List<PropertyValue> beans = new ArrayList<PropertyValue>();

        String sql = "select * from PropertyValue where cid = ? ";

        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ps.setInt(1, cid);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                PropertyValue bean = new PropertyValue();
                int id = rs.getInt(1);

                int uid = rs.getInt("uid");
                int cid1 = rs.getInt("cid");
                int skinid = rs.getInt("skinid");
                float skinabrase = rs.getFloat("skinabrase");
                int value = rs.getInt("value");

                Property property = new PropertyDAO().get(cid1);
                user user = new userDao("root","admin").getUserById(uid);
                Category category = new CategoryDao("root","admin").get(cid);

                bean.setId(id);
                bean.setUser(user);
                bean.setProperty(property);
                bean.setskinId(skinid);
                bean.setskinAbrase(skinabrase);
                bean.setValue(value);

                beans.add(bean);
            }
        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return beans;
    }

    public List<PropertyValue> list() {
        return list(0, Short.MAX_VALUE);
    }

    public List<PropertyValue> list(int start, int count) {
        List<PropertyValue> beans = new ArrayList<PropertyValue>();

        String sql = "select * from PropertyValue order by id desc limit ?,? ";

        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {

            ps.setInt(1, start);
            ps.setInt(2, count);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                PropertyValue bean = new PropertyValue();

                int id = rs.getInt("id");
                int cid = rs.getInt("cid");
                int uid = rs.getInt("uid");
                int value = rs.getInt("value");
                int skinid = rs.getInt("skinid");
                float skinabrase = rs.getFloat("skinabrase");

                user user = new userDao("root","admin").getUserById(uid);
                Property property = new PropertyDAO().get(cid);

                bean.setId(id);
                bean.setProperty(property);
                bean.setUser(user);
                bean.setskinId(skinid);
                bean.setskinAbrase(skinabrase);
                bean.setValue(value);

                beans.add(bean);
            }
        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return beans;
    }

    public List<PropertyValue> get(int cid, int uid ) {

        List<PropertyValue> beans = new ArrayList<PropertyValue>();

        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {

            String sql = "select * from PropertyValue where cid = " + cid + " and uid = " + uid;

            ResultSet rs = s.executeQuery(sql);

            if (rs.next()) {
                PropertyValue bean = new PropertyValue();

                int id = rs.getInt("id");

                int value = rs.getInt("value");


                Property property = new PropertyDAO().get(cid);
                user user =new userDao("root","admin").getUserById(uid);

                bean.setUser(user);
                bean.setProperty(property);

                bean.setValue(value);
                bean.setId(id);
            }

        } catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }
        return beans;
    }





}