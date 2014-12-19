package web;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2014/12/18.
 */
@WebServlet(name = "CommentServlet",urlPatterns = "/comment")
public class CommentServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
        PrintWriter out=response.getWriter();
        //获取表单提交的评论
        String comn=request.getParameter("text");
        //输出提交的评论
        out.print("<h1>评论是:"+comn+"</h1>");
        out.close();

    }
}
