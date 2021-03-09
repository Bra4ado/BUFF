package test;

import Dao.CategoryDao;
import enity.Category;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class testCategory {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        CategoryDao database = new CategoryDao("root","admin");
        database.showConnect();

        /*int a =database.getTotal();
        System.out.println(a);*/

        /*Category category = new Category();
        category.setName("M4");
        database.add(category);
*/
        /*Category category=database.get(1);
        System.out.println(category.getName());*/

        List<Category> userList = database.list();
        System.out.println(userList.size());
        for(Category each:userList){
            System.out.println(each);
            System.out.println(each.getName());
        }
    }
}
