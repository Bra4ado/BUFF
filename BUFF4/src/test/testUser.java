package test;
import Dao.userDao;
import enity.user;

import java.sql.SQLException;
import java.util.ArrayList;

public class testUser {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        userDao database = new userDao("root","admin");
        database.showConnect();
        /*ArrayList<UserData> userList2 = database.getAllUser();
        System.out.println(userList2.size());*/
        /*database.insert("Eric","1111","484984849494949494949");
        database.insert("Rose","111","484984849494949494949");
        database.insert("Tom","111","484984849494949494949");*/
        /*database.insert("Ropz","111","abcdefg");*/
        /*UserData userData1= database.getUser("1");*/
        /*database.delete(3);*/

        //获得一个对象
       /* user userData1 = database.getUser("Eric");
        System.out.println(userData1);*/


        /*ArrayList<user> userList = database.getAllUser();
        System.out.println(userList.size());
        for(user each:userList){
            System.out.println(each);
            System.out.println(each.getUserName());
        }*/
        /*user userData = database.check("Eric","1111");
        if(userData == null){
            System.out.println("用户名或密码错误");
        }
        else
            System.out.println("就知道"+userData.getUserName()+"你来了");*/
        /*if(database.check_name("Eric")){
            System.out.println("ok");
        }
        else
            System.out.println("chongfu");*/
        /*user userData = database.check_email("710465130@qq.com","710465130@qq.com");
        if(userData == null){
            System.out.println("邮箱错误");
        }
        else
            System.out.println("就知道"+userData.getUserName()+"你来了");
            System.out.println("你的密码是"+userData.getuserPwd());*/

         user userData1 = database.getUserById(4);
        System.out.println(userData1.getUserName());
        }
}
