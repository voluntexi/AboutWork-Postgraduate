package Servlet;

import DBhelper.DBhelper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    public RegisterServlet() {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String userID = req.getParameter("username");
        String userPWD = req.getParameter("userpassword");
        String sql = "insert into login(userID,userPWD) values('"+userID+"','"+userPWD+"')";
        try
        {
           Integer result =  DBhelper.executeNonQuery(sql);
           System.out.println("完成 "+result.toString()+" 条数据的插入...");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally {
            resp.sendRedirect("index.jsp");
            System.out.println("跳转至Login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }
}
