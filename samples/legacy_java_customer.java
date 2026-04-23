import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class CustomerEJB {
    private static Connection conn;

    public String findCustomer(String ssn) throws Exception {
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM customers WHERE ssn='" + ssn + "'");
        if (rs.next()) {
            return rs.getString("name");
        }
        return "missing";
    }
}
