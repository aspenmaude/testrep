package tp.kits3.open4um.vo;

public class TagProduct {

    private Integer tagProductid;

    private Integer tagid;

    private Integer productid;

    public Integer getTagProductid() {
        return tagProductid;
    }

    public void setTagProductid(Integer tagProductid) {
        this.tagProductid = tagProductid;
    }

    public Integer getTagid() {
        return tagid;
    }

    public void setTagid(Integer tagid) {
        this.tagid = tagid;
    }

    public Integer getProductid() {
        return productid;
    }

    public void setProductid(Integer productid) {
        this.productid = productid;
    }

    // TagProduct 모델 복사
    public void CopyData(TagProduct param)
    {
        this.tagProductid = param.getTagProductid();
        this.tagid = param.getTagid();
        this.productid = param.getProductid();
    }
}