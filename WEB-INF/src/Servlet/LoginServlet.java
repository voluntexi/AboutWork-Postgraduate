package Servlet;

import DBhelper.DBhelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;

@WebServlet(urlPatterns = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    public LoginServlet() {

    }

    ResultSet rs =null;
    Boolean isLogin = false;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("username");
        System.out.println("username is "+userName);
        String userPsw  = req.getParameter("userpassword");
        System.out.println("userPsw is "+userPsw);
        System.out.println("doget运行成功");
        //验证账号密码
        try {

            String sql = "select userPWD from login where userID='"+userName+"'";
            rs = DBhelper.executeQuery(sql);
            System.out.println("数据库运行成功");
            if(rs.next())
            {
                String pw = rs.getString("userPWD");
                if(pw.equals(userPsw))
                {
                    isLogin = true;
                    System.out.println("验证数据库运行成功...");
                }
                else{
                    isLogin = false;
                    resp.sendRedirect("Login.jsp");
                }
            }
            else
            {
                isLogin = false;
                resp.sendRedirect("Login.jsp");
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
            System.out.println("数据库运行失败");
            isLogin = false;
        }
        finally {
            try {
                if(rs!=null)
                {
                    DBhelper.free(rs);
                }
            } catch (Exception e2) {
                // TODO: handle exception
                e2.printStackTrace();
            }
        }
        if(isLogin){
            //跳转到增删页面
            System.out.println("跳转页面...主页...并发送登录成功的数据isLogin");
            req.getRequestDispatcher("Main.jsp").forward(req,resp);
//            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
        else{
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
