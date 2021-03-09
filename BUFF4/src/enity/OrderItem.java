package enity;
 
public class OrderItem {

    private int id;
    private PropertyValue propertyvalue;
    private user user;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public PropertyValue getProduct() {
        return propertyvalue;
    }
    public void setPropertyValue(PropertyValue propertyvalue) {
        this.propertyvalue = propertyvalue;
    }

    public user getUser() {
        return user;
    }
    public void setUser(user user) {
        this.user = user;
    }

 
}
