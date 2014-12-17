package web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2014/12/17.
 */
@WebServlet(name = "ActionServlet", value = "*.do")
public class ActionServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String uri = request.getRequestURI();
        uri = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
        //处理登录请求
        if (uri.equals("/login")) {
            //处理表单数据
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            if (uname.equals("1111")){
                //验证成功
                HttpSession session=request.getSession();
                //绑定登录信息到seesion中
                session.setAttribute("uname",uname);
                //重定向到首页
                response.sendRedirect("index.jsp");
            }else {//验证失败
                request.setAttribute("msg","用户名或密码错误");
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        }
    }


}
