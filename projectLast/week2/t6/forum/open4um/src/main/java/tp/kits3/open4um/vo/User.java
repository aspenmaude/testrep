package tp.kits3.open4um.vo;

import java.sql.Timestamp;

public class User {

    private Integer userid;

    private String username;

    private String password;

    private String fullname;

    private String phone;

    private String email;

    private Integer roleaccount_id;

    private String status;

    private String fbid;

    private Timestamp birthday;

    private String avatar;

    private String token;

    private Double money;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getRoleaccountId() {
        return roleaccount_id;
    }

    public void setRoleaccountId(Integer roleaccountId) {
        this.roleaccount_id = roleaccountId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFbid() {
        return fbid;
    }

    public void setFbid(String fbid) {
        this.fbid = fbid;
    }

    public Timestamp getBirthday() {
        return birthday;
    }

    public void setBirthday(Timestamp birthday) {
        this.birthday = birthday;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    // User 모델 복사
    public void CopyData(User param)
    {
        this.userid = param.getUserid();
        this.username = param.getUsername();
        this.password = param.getPassword();
        this.fullname = param.getFullname();
        this.phone = param.getPhone();
        this.email = param.getEmail();
        this.roleaccount_id = param.getRoleaccountId();
        this.status = param.getStatus();
        this.fbid = param.getFbid();
        this.birthday = param.getBirthday();
        this.avatar = param.getAvatar();
        this.token = param.getToken();
        this.money = param.getMoney();
    }
}