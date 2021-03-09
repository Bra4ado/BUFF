package enity;
 
import java.util.List;
 
public class Category {
 
    private String name;
    private int id;
    List<Property> Property;
    List<List<Property>> PropertyByRow;
 
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    @Override
    public String toString() {
        return "Category [name=" + name + "]";
    }
 
    public List<Property> getProperty() {
        return Property;
    }
 
    public void setProperty(List<Property> products) {
        this.Property = products;
    }
 
    public List<List<Property>> getPropertyByRow() {
        return PropertyByRow;
    }
 
    public void setPropertyByRow(List<List<Property>> productsByRow) {
        this.PropertyByRow = PropertyByRow;
    }
 
}