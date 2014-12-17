package web;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

/**
 * Created by Administrator on 2014/12/17.
 */
@WebServlet(name = "CodeServlet",value = "/code")
public class CodeServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //绘制一张图片的过程
        //1.准备一张空白的有尺寸的图片
        BufferedImage image=new BufferedImage(100,30,BufferedImage.TYPE_INT_RGB);
        //2.获取图片的画笔对象
        Graphics g=image.getGraphics();
        //3.设置画笔颜色
        Random r=new Random();
        g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
        //4.绘制背景
        g.fillRect(0,0,100,30);
        //5.更改画笔颜色
        g.setColor(new Color(255,255,255));
        g.setFont(new Font(null,Font.BOLD,24));
        //6.绘制字符串
        String number=getNumber(5);
        g.drawString(number,4,22);
        //7.保存图片到流中,响应溜的数据格式
        response.setContentType("images/jpeg");
        //7.获取输出流
        OutputStream ops =response.getOutputStream();
        //8.保存到图片的输出流中
        ImageIO.write(image,"jpeg",ops);
        ops.close();
    }
    public String getNumber(int size){
        String cs="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        String number="";
        Random r=new Random();
        for (int i=0;i<size;i++){
            number +=cs.charAt(r.nextInt(cs.length()));
        }
        return number;
    }
}
