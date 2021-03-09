package enity;

import java.util.Date;

public class news{
    private int id;
    private String content;
    private  user user ;
    private Date createDate;
    
    public int getId() { return id;}
    public void setId(int id) { this.id = id;}

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public Date getCreateDate() { return createDate; }
    public void setCreateDate(Date createDate) { this.createDate = createDate; }

    public user getUser() { return user; }
    public void setUser(user user) { this.user = user; }

}
