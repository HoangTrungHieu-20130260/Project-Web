package vn.edu.hcmuaf.fit.Service;

import vn.edu.hcmuaf.fit.Database.DBConnect;
<<<<<<< HEAD
import vn.edu.hcmuaf.fit.Model.CategoryController;
import vn.edu.hcmuaf.fit.Model.Product;
import vn.edu.hcmuaf.fit.Model.User;
=======
import vn.edu.hcmuaf.fit.Model.Category;
import vn.edu.hcmuaf.fit.Model.Product;
>>>>>>> 8df66b6f1f2bb1171f3f076c77faef235b058fe1

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

<<<<<<< HEAD
public class CategoryService{
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    public CategoryController getCategoryById(int cid, String cname) throws SQLException {
        String sql = "select * from category where cid=?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(sql);
            preparedStatement.setInt(1, cid);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new CategoryController(resultSet.getInt(1),
                        resultSet.getString(2));
            }
            } catch(SQLException e){
                throw new RuntimeException();
            }
            return null;
        }

    public List<Product> getCheapProducts(int pid) {
        List<Product> list = new ArrayList<>();
        String sql = "Select product.pid, product.pimage, product.pname, product.pprice_old, " +
                "product.pprice, product.pbranch, product.pstatus, product.pdevice, product.pnumber_device, " +
                "product.pdesciption, product.pamount, category.cname\\n\" +\n" +
                "     \n" +
                " from product join category" +
                "where product.cid = category.cid\n" +
                " order by price esc";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(sql);
            preparedStatement.setInt(1, pid);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return (List<Product>) new Product(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4),
                        resultSet.getInt(5),
                        resultSet.getString(6),
                        resultSet.getString(7),
                        resultSet.getString(8),
                        resultSet.getInt(9),
                        resultSet.getString(10),
                        resultSet.getInt(11),
                        resultSet.getString(12));

            }
        } catch(SQLException e){
            throw new RuntimeException();
        }
        return list;
    }
    public List<CategoryController> getAll() throws SQLException {
        List<CategoryController> list = new ArrayList<>();
        String sql = "Select * \n" +
                "   , from category \n" +
                "   where category.cid=?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(sql);
//            preparedStatement.setInt(1, cid);
//            preparedStatement.setString(2, cname);
            resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
                CategoryController c = new CategoryController(resultSet.getInt("cid"),
                        resultSet.getString("cname"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
//    public Category getCategoryById(int id) {
//        String sql = "select * from category where id=?";
//        try {
//            PreparedStatement st = conn.prepareStatement(sql);
//            st.setInt(1, id);
//            ResultSet rs = st.executeQuery();
//            if(rs.next()) {
//                Category c = new Category(rs.getInt("id"),
//                                    rs.getString("name"));
//                return c;
//            }
//        }catch (SQLException e) {
//            System.out.println(e);
//        }
//        return null;
//    }
//    public List<Product> getExpensiveProducts() {
//        List<Product> list = new ArrayList<>();
//        String sql = "Select top 5 [id]\n"
//                +"      ,[img]\n"
//                +"      ,[name]\n"
//                +"      ,[oldPrice]\n" +
//                "       ,[price]\n" +
//                "       ,[branch]\n" +
//                "       ,[status]\n" +
//                "       ,[device]\n" +
//                "       ,[deviceNumber]\n" +
//                "       ,[description]\n" +
//                "       ,[amount]\n" +
//                "       ,[category]\n" +
//                " from [dbo].[product]\n" +
//                " order by price desc";
//        try {
//            PreparedStatement st = conn.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                Product p = new Product();
//                p.setId(rs.getInt("id"));
//                p.setName(rs.getString("name"));
//                p.setImg(rs.getString("img"));
//                p.setOldPrice(rs.getInt("oldPrice"));
//                p.setPrice(rs.getInt("price"));
//                p.setBranch(rs.getString("branch"));
//                p.setStatus(rs.getString("status"));
//                p.setDevice(rs.getString("device"));
//                p.setDeviceNumber(rs.getInt("deviceNumber"));
//                p.setDescription(rs.getString("description"));
//                p.setAmount(rs.getInt("amount"));
//                Category c = getCategoryById(rs.getInt("cid"));
//                p.setCategory(c);
//                list.add(p);
//            }
//        } catch (SQLException e) {
//
//        }
//        return list;
//    }
//    public List<Product> getCheapProducts() {
//        List<Product> list = new ArrayList<>();
//        String sql = "Select top 5 [id]\n"
//                +"      ,[img]\n"
//                +"      ,[name]\n"
//                +"      ,[oldPrice]\n" +
//                "       ,[price]\n" +
//                "       ,[branch]\n" +
//                "       ,[status]\n" +
//                "       ,[device]\n" +
//                "       ,[deviceNumber]\n" +
//                "       ,[description]\n" +
//                "       ,[amount]\n" +
//                "       ,[category]\n" +
//                " from [dbo].[product]\n" +
//                " order by price esc";
//        try {
//            PreparedStatement st = conn.prepareStatement(sql);
//            ResultSet rs = st.executeQuery();
//            while (rs.next()) {
//                Product p = new Product();
//                p.setId(rs.getInt("id"));
//                p.setName(rs.getString("name"));
//                p.setImg(rs.getString("img"));
//                p.setOldPrice(rs.getInt("oldPrice"));
//                p.setPrice(rs.getInt("price"));
//                p.setBranch(rs.getString("branch"));
//                p.setStatus(rs.getString("status"));
//                p.setDevice(rs.getString("device"));
//                p.setDeviceNumber(rs.getInt("deviceNumber"));
//                p.setDescription(rs.getString("description"));
//                p.setAmount(rs.getInt("amount"));
//                Category c = getCategoryById(rs.getInt("cid"));
//                p.setCategory(c);
//                list.add(p);
//            }
//        } catch (SQLException e) {
//
//        }
//        return list;
//    }
=======
public class CategoryService {
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(new Category(resultSet.getInt(1),
                        resultSet.getString(2)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
    public void addCategory(String cname) {
        String query = "INSERT INTO category(cname) VALUES (?)";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            preparedStatement.setString(1, cname);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    public void deleteCategory(int cid) {
        String query = "DELETE FROM category WHERE cid = ?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, cid);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    public Category getDetailCategory(int cid) {
        String query = "SELECT * FROM category WHERE cid = ?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            preparedStatement.setInt(1, cid);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return new Category(resultSet.getInt(1),
                        resultSet.getString(2));
            }
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
        return null;
    }
    public void editCategory(int cid, String cname) {
        String query = "UPDATE category SET cname = ? WHERE cid = ?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            preparedStatement.setString(1, cname);
            preparedStatement.setInt(2, cid);
            preparedStatement.executeUpdate();
        } catch (SQLException ex) {
            throw new RuntimeException(ex);
        }
    }
    public List<Category> searchNameCategory(String textSearch) {
        List<Category> list = new ArrayList<>();
        String query ="SELECT * FROM category WHERE cname LIKE ?";
        try {
            statement = DBConnect.getInstall().get();
            preparedStatement = statement.getConnection().prepareStatement(query);
            preparedStatement.setString(1, "%" +textSearch + "%");
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                list.add(new Category(resultSet.getInt(1),
                        resultSet.getString(2)));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }
>>>>>>> 8df66b6f1f2bb1171f3f076c77faef235b058fe1
}
