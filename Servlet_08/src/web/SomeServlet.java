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
@WebServlet(name = "SomeServlet", value = "/some")
public class SomeServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;utf-8");
        PrintWriter out = response.getWriter();
        //创建seesion对象
        HttpSession session = request.getSession();
        //    输出sid
//        System.out.println(session.getId());
        //先取直
        String uname = (String) session.getAttribute("uname");
        //根据取值的结果来判断这个直是否存在
        if(uname==null){
            //第一次访问
            //存入用户名
            System.out.println("第一次访问");
            session.setAttribute("uname","123");
        }else{//不是第一次了
            System.out.println("uname="+uname);
        }
        out.close();
    }

}
