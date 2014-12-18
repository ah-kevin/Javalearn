package web;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.ServiceMode;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2014/12/18.
 */
public class CommentFilter implements Filter {

   /**
    * 当容器销毁过滤器实例时调用的方法
    * 只调用一次
    * */
    public void destroy() {
    }


    /*
    * doFilter 用于设置过滤的具体逻辑
    * 该方法有三个参数:
    * req:拦截请求时截获的请求对象,即request对象
    * resp:与拦截的请求对应的请求对象,即response对象
    * chain:FilterChain 过滤器链对象,该对象可以决定是将请求传给后续的servlet还是直接就提供响应
    * */
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        //转换参数转换为HttpServlet类
        HttpServletRequest request= (HttpServletRequest) req;
        HttpServletResponse response= (HttpServletResponse) resp;
        //获取请求提交的评论信息
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out =response.getWriter();
        String comn=request.getParameter("text");
        System.out.println(comn);
//        判断评论中是否包含铭感字眼
        if (comn.indexOf("胡萝卜") != -1){
            System.out.println("11");
            out.print("评论已关闭");
        }else {
            //如果没有铭感词汇,则继续交给后续的其他组件处理
            //即可以吊用dofFilter放行
            chain.doFilter(request,response);
        }
    }
/**
 *在容器启动时,容器会立即创建Filter的实例
 * 创建实例后,会把已经准备好的FilterConfig对象传给init方法,
 * 只调用一次init的方法
 * FilterConfig 可以获取到配置文件中有关该过滤器的一些初始化参数
*/
    public void init(FilterConfig config) throws ServletException {

    }

}
