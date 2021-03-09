package enity;

public class user {
    private int userMoney;
    private String userName;
    private  int userId;
    private String userPwd;
    private String userSteamId;
    public user( String name,int id,  String pwd, String SteamId){
        this.userName=name;
        this.userId=id;
        this.userPwd=pwd;
        this.userSteamId=SteamId;
    }

    public int getuserId(){
        return userId;
    }
    public String getUserName(){ return userName; }
    public String getuserPwd(){ return userPwd; }
    public String getuserSteamId(){ return userSteamId; }

    public void setPassword(String password) {
        this.userPwd = password;
    }
    public void setUsername(String username) { this.userName = username; }

}
