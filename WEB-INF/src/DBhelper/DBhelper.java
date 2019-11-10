package DBhelper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public final class DBhelper {

    //连接数据库
    public static Connection  getConnection(){
        Connection conn = null;
        try {

            String driver = "com.mysql.cj.jdbc.Driver"; // 数据库驱动
            String url = "jdbc:MySQL://47.101.207.46:3306/workdb?useUnicode=true&characterEncoding=utf" +
                    "8&serverTimezone=GMT%2B8&useSSL=false";//数据库
            String user = "root"; // 用户名
            String password = "971128"; // 密码
            Class.forName(driver);// 加载数据库驱动
            if (null == conn) {
                conn = DriverManager.getConnection(url, user, password);
            }

        } catch (ClassNotFoundException e) {
            System.out.println("Sorry,can't find the Driver!");
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return conn;

    }
    /**

     * 增删改【Add、Del、Update】

     *

     * @param sql

     * @return int

     */

    public static int executeNonQuery(String sql) {

        int result = 0;
        Connection conn = null;
        Statement stmt = null;
        try {

            conn = getConnection();
            stmt = conn.createStatement();
            result = stmt.executeUpdate(sql);
        } catch (SQLException err) {

            err.printStackTrace();
            free(null, stmt, conn);

        } finally {
            free(null, stmt, conn);
        }

        return result;

    }



    /**

     * 增删改【Add、Delete、Update】

     *

     * @param sql

     * @param obj

     * @return int

     */

    public static int executeNonQuery(String sql, Object... obj) {

        int result = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {

            conn = getConnection();
            pstmt = conn.prepareStatement(sql);

            for (int i = 0; i < obj.length; i++) {
                pstmt.setObject(i + 1, obj[i]);
            }
            result = pstmt.executeUpdate();

        } catch (SQLException err) {
            err.printStackTrace();
            free(null, pstmt, conn);

        } finally {

            free(null, pstmt, conn);

        }

        return result;

    }



    /**

     * 查【Query】

     *

     * @param sql

     * @return ResultSet

     */

    public static ResultSet executeQuery(String sql) {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {

            conn = getConnection();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);

        } catch (SQLException err) {
            err.printStackTrace();
            free(rs, stmt, conn);
        }
        return rs;

    }



    /**

     * 查【Query】

     *

     * @param sql

     * @param obj

     * @return ResultSet

     */

    public static ResultSet executeQuery(String sql, Object... obj) {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        try {

            conn = getConnection();
            pstmt = conn.prepareStatement(sql);
            for (int i = 0; i < obj.length; i++) {
                pstmt.setObject(i + 1, obj[i]);

            }
            rs = pstmt.executeQuery();

        } catch (SQLException err) {
            err.printStackTrace();
            free(rs, pstmt, conn);
        }
        return rs;

    }



    /**

     * 判断记录是否存在

     *

     * @param sql

     * @return Boolean

     */

    public static Boolean isExist(String sql) {

        ResultSet rs = null;
        try {

            rs = executeQuery(sql);
            rs.last();
            int count = rs.getRow();
            if (count > 0) {
                return true;
            } else {
                return false;
            }

        } catch (SQLException err) {
            err.printStackTrace();
            free(rs);
            return false;
        } finally {
            free(rs);
        }

    }



    /**

     * 释放【ResultSet】资源

     *

     * @param rs

     */

    public static void free(ResultSet rs) {

        try {
            if (rs != null) {
                rs.close();
            }

        } catch (SQLException err) {
            err.printStackTrace();
        }

    }



    /**

     * 释放【Statement】资源

     *

     * @param st

     */

    public static void free(Statement st) {

        try {
            if (st != null) {
                st.close();
            }

        } catch (SQLException err) {
            err.printStackTrace();
        }
    }



    /**

     * 释放【Connection】资源

     *

     * @param conn

     */

    public static void free(Connection conn) {

        try {
            if (conn != null) {
                conn.close();
            }

        } catch (SQLException err) {
            err.printStackTrace();
        }

    }
    /**

     * 释放所有数据资源

     *

     * @param rs

     * @param st

     * @param conn

     */

    public static void free(ResultSet rs, Statement st, Connection conn) {

        free(rs);
        free(st);
        free(conn);

    }

}
