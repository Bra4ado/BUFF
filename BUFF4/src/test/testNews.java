package test;

import Dao.newsDao;
import enity.news;
import enity.user;
import java.util.Date;
import java.sql.SQLException;

public class testNews {
    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        newsDao database = new newsDao("root", "admin");
        database.showConnect();

        /*int a = database.getTotal();
        System.out.println(a);*/

        user test = new user("author",6,"author","1433223");
        String content = "据HLTV获悉，近日Valve正计划取消原定于2021年春季举办的Major赛事。根据目前官方邮件告知的内容来看，V社已将时间推迟到了明年秋季，目前已有一家赛事合作伙伴和欧洲场馆处在计划内。如果计划属实，那么这场盛事将于2021年10月25至11月7日与大家见面。 与今年的情况相同，本次赛事计划推迟同样由新冠疫情造成。随着疫情在全球范围肆虐，2020年几乎所有国内外线下大赛都已宣告取消，就目前来看“暂缓举办”这个计划的实行依旧是遥遥无期。此外，对于今年4月推出的RMR区域Major积分排名，Valve依旧没有任何新规推出，但其补充表示欢迎赛事方就积分系统和符合条件的赛事类型提出反馈意见。";
        Date createDate = new Date();
        database.add(content, test,  createDate);

        /*user test = new user("author",6,"author","1433223");
        database.delete(1);*/


        /*news newss  = new news();
        newss= database.get(1);
        System.out.println(newss.getContent());*/

    }






}
