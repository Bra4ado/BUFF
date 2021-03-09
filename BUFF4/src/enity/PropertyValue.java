package enity;
 
public class PropertyValue {

    private int id;
    private int skinId;
    private float skinAbrase;
    private int value;
    private Property property;
    private Category category;
    private user user;

 
    public int getId() { return id; }
    public void setId(int id) {
        this.id = id;
    }

    public int getskinid() {
        return skinId;
    }
    public void setskinId(int skinId) {
        this.skinId = skinId;
    }

    public float getskinAbrase() {
        return skinAbrase;
    }
    public void setskinAbrase(float skinAbrase) {
        this.skinAbrase = skinAbrase;
    }

    public int getValue() {
        return value;
    }
    public void setValue(int value) {
        this.value = value;
    }

    public Property getProperty() { return property; }
    public void setProperty(Property property) {
        this.property = property;
    }

    public user getUser() { return user; }
    public void setUser(user user) { this.user = user; }


}