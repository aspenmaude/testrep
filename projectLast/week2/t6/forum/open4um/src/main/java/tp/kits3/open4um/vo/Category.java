package tp.kits3.open4um.vo;

public class Category {

    private Integer ctgid;

    private String ctgname;

    private String ctgdate;

    private Integer parentid;

    public Integer getCtgid() {
        return ctgid;
    }

    public void setCtgid(Integer ctgid) {
        this.ctgid = ctgid;
    }

    public String getCtgname() {
        return ctgname;
    }

    public void setCtgname(String ctgname) {
        this.ctgname = ctgname;
    }

    public String getCtgdate() {
        return ctgdate;
    }

    public void setCtgdate(String ctgdate) {
        this.ctgdate = ctgdate;
    }

    public Integer getParentid() {
        return parentid;
    }

    public void setParentid(Integer parentid) {
        this.parentid = parentid;
    }

    // Category 모델 복사
    public void CopyData(Category param)
    {
        this.ctgid = param.getCtgid();
        this.ctgname = param.getCtgname();
        this.ctgdate = param.getCtgdate();
        this.parentid = param.getParentid();
    }
}