package util;

public class DateUtil {
 
    public static java.sql.Date d2t(java.util.Date d) {
        if (null == d)
            return null;
        return new java.sql.Date(d.getTime());
    }
 
    public static java.util.Date t2d(java.sql.Timestamp t) {
        if (null == t)
            return null;
        return new java.util.Date(t.getTime());
    }
}