package test;

import Dao.PropertyDAO;
import Dao.PropertyValueDAO;
import Dao.userDao;
import enity.Category;
import enity.Property;
import enity.PropertyValue;
import enity.user;

import java.sql.SQLException;
import java.util.List;

public class tetsPropertyValue {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        /*查全部*/
        /*PropertyValueDAO database =new PropertyValueDAO();
        int total = database.getTotal();
        System.out.println(total);*/

        /*增加*/
        /*PropertyValue propertyValue =new PropertyValue();
        PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        PropertyDAO propertyDAO =new PropertyDAO();
        Property property =propertyDAO.get(6);

        userDao userDao = new userDao("root","admin");
        user user =userDao.getUser("Rose");

        propertyValue.setProperty(property);
        propertyValue.setUser(user);
        propertyValue.setskinAbrase((float) 0.00000008);
        propertyValue.setskinId(300);
        propertyValue.setValue(20000);
        propertyValueDAO.add(propertyValue);*/

        /*改*/
        PropertyValueDAO propertyValueDAO =new PropertyValueDAO();
        PropertyValue propertyValue =new PropertyValue();

        PropertyDAO propertyDAO =new PropertyDAO();
        Property property =propertyDAO.get(1);

        userDao userDao = new userDao("root","admin");
        user user =userDao.getUser("Eric");

        propertyValue.setProperty(property);
        propertyValue.setUser(user);
        propertyValue.setskinAbrase((float) 0.008);
        propertyValue.setskinId(777);
        propertyValue.setValue(68);
        propertyValue.setId(1);

        propertyValueDAO.update(propertyValue);

        /*删*/
        /*PropertyValueDAO propertyValueDAO =new PropertyValueDAO();
        propertyValueDAO.delete(2);*/

        /*查一个id*/
        /*PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        PropertyValue propertyValue = propertyValueDAO.get(1);

        System.out.println(propertyValue.getId());
        System.out.println(propertyValue.getProperty().getName());
        System.out.println(propertyValue.getskinAbrase());
        System.out.println(propertyValue.getskinid());
        System.out.println(propertyValue.getValue());
        System.out.println(propertyValue.getUser().getUserName());*/

        /*查全部*/
        /*PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        List<PropertyValue> propertyValues = propertyValueDAO.getAllSkin();

        System.out.println("size="+propertyValues.size());
        for(PropertyValue each:propertyValues){
            System.out.println(each);

            System.out.println(each.getId());
            System.out.println(each.getUser().getUserName());
            System.out.println(each.getValue());
            System.out.println(each.getskinid());
            System.out.println(each.getskinAbrase());
            System.out.println(each.getProperty().getName());
        }*/

        /*查一个user下的*/
        /*PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        List<PropertyValue> propertyValues = propertyValueDAO.list_byUser(4);

        System.out.println("size="+propertyValues.size());

        for(PropertyValue each:propertyValues){
            System.out.println(each);

            System.out.println(each.getId());
            System.out.println(each.getUser().getUserName());
            System.out.println(each.getValue());
            System.out.println(each.getskinid());
            System.out.println(each.getskinAbrase());
            System.out.println(each.getProperty().getName());
        }*/

        /*查一个property下的*/
        /*PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        List<PropertyValue> propertyValues = propertyValueDAO.list_byProperty(1);

        System.out.println("size="+propertyValues.size());

        for(PropertyValue each:propertyValues){
            System.out.println(each);

            System.out.println(each.getId());
            System.out.println(each.getUser().getUserName());
            System.out.println(each.getValue());
            System.out.println(each.getskinid());
            System.out.println(each.getskinAbrase());
            System.out.println(each.getProperty().getName());
        }*/

        /*分表查询*/
        /*PropertyValueDAO propertyValueDAO = new PropertyValueDAO();

        List<PropertyValue> propertyValues = propertyValueDAO.list(0,3);

        System.out.println("size="+propertyValues.size());
        for(PropertyValue each:propertyValues){
            System.out.println(each);

            System.out.println(each.getId());
            System.out.println(each.getUser().getUserName());
            System.out.println(each.getValue());
            System.out.println(each.getskinid());
            System.out.println(each.getskinAbrase());
            System.out.println(each.getProperty().getName());
        }*/
    }
}
