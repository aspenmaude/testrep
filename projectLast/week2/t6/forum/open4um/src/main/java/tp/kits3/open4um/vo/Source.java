package tp.kits3.open4um.vo;

import java.sql.Timestamp;

public class Source {

    private Integer sourceid;

    private Timestamp date;

    private String sourcename;

    private String size;

    private String contentdetails;

    private String title;

    private Integer userid;

    private Integer ctgid;

    private Integer price;

    private String avatar;

    private Integer stateid;

    private Integer countDownload;

    public Integer getSourceid() {
        return sourceid;
    }

    public void setSourceid(Integer sourceid) {
        this.sourceid = sourceid;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getSourcename() {
        return sourcename;
    }

    public void setSourcename(String sourcename) {
        this.sourcename = sourcename;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public String getContentdetails() {
        return contentdetails;
    }

    public void setContentdetails(String contentdetails) {
        this.contentdetails = contentdetails;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public Integer getCtgid() {
        return ctgid;
    }

    public void setCtgid(Integer ctgid) {
        this.ctgid = ctgid;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Integer getStateid() {
        return stateid;
    }

    public void setStateid(Integer stateid) {
        this.stateid = stateid;
    }

    public Integer getCountDownload() {
        return countDownload;
    }

    public void setCountDownload(Integer countDownload) {
        this.countDownload = countDownload;
    }

    // Source 모델 복사
    public void CopyData(Source param)
    {
        this.sourceid = param.getSourceid();
        this.date = param.getDate();
        this.sourcename = param.getSourcename();
        this.size = param.getSize();
        this.contentdetails = param.getContentdetails();
        this.title = param.getTitle();
        this.userid = param.getUserid();
        this.ctgid = param.getCtgid();
        this.price = param.getPrice();
        this.avatar = param.getAvatar();
        this.stateid = param.getStateid();
        this.countDownload = param.getCountDownload();
    }
}