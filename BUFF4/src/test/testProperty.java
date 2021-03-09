package test;

import Dao.CategoryDao;
import Dao.PropertyDAO;
import enity.Category;
import enity.Property;

import java.sql.SQLException;
import java.util.List;

public class testProperty {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {

        /*增*//*
        Property property = new Property();
        CategoryDao database1 = new CategoryDao("root","admin");
        Category category = database1.get(4);


        property.setCategory(category);
        property.setName("血腥运动");

        PropertyDAO database2 = new PropertyDAO();
        database2.add(property);*/

        /*查一个分类下的有几个
        PropertyDAO database = new PropertyDAO();
        CategoryDao database1 = new CategoryDao("root","admin");

        int property = database.getTotal(4);

        System.out.println(property);*/

        /*改*/
        PropertyDAO database = new PropertyDAO();
        CategoryDao database1 = new CategoryDao("root","admin");

        Property property = new Property();
        Category category = database1.get(4);

        property.setName("皇后");
        property.setCategory(category);
        property.setId(10);

        database.update(property);

        /*查一个*//*
        PropertyDAO database = new PropertyDAO();
        int a =1;
        Property property = database.get(a);
        System.out.println(property.getName());*/

        /*查一个分类下的*//*
        PropertyDAO database = new PropertyDAO();
        List<Property> userList = database.list(4);
        System.out.println(userList.size());
        for (Property each : userList) {
            System.out.println(each);
            System.out.println(each.getName());
        }*/

        /*查全部的*/
        /*PropertyDAO database = new PropertyDAO();
        List<Property> skinList = database.getAllSkin();

        for (Property each : skinList) {
            System.out.println(each);
            System.out.println(each.getName());
            System.out.println(each.getCategory().getName());
        }*/
    }
}
