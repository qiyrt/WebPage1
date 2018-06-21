package com.mis.servlet;

import com.mis.model.Student;
import com.mis.util.DaoFactory;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

//使用@WebServlet配置InsertServlet的访问路径
@WebServlet(name = "InsertServlet", urlPatterns = {"/InsertServlet"})
//使用注解@MultipartConfig将一个Servlet标识为支持文件上传
@MultipartConfig
public class InsertServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String sno = request.getParameter("sno").trim();
        String sname = request.getParameter("sname").trim();
        String ssex = request.getParameter("ssex").trim();
        String sage = request.getParameter("sage").trim();
        String sdept = request.getParameter("sdept").trim();

        try {
            Part part = request.getPart("photo");
            long size = part.getSize();
            //验证学生照片大小
            if (size > 1024000) {
                //发生错误，将错误信息放到request中，在student_add.jsp中获取错误信息显示
                request.setAttribute("message", "学生照片图片尺寸应小于1M！");
                request.getRequestDispatcher("insert.jsp").forward(request, response);
                return;
            }

            //通过表单file控件(<input type="file" name="photo" id="photo"/>)的名字直接获取Part对象
            //Servlet3没有提供直接获取文件名的方法,需要从请求头中解析出来
            //获取请求头，请求头的格式：form-data; name="file"; filename="a.jpg"
            String header = part.getHeader("content-disposition");

            Student student = new Student();
            student.setSno(sno);
            student.setSname(sname);
            student.setSsex(ssex);
            student.setSage(Integer.parseInt(sage));
            student.setSdept(sdept);
            student.setPhoto(part.getInputStream());
            // 如果选择了上传图片，将图片保存到photo目录下，否则不保存
            if (size > 0) {
                // 为了避免图片文件名重复，这里采用学号作为照片图片文件名
                String fileName = sno + getFileSuffixName(header);
                String savePath = request.getServletContext().getRealPath("/photo");
                part.write(savePath + File.separator + fileName);
                student.setPhoto_url(fileName);
            } else {
                student.setPhoto_url("nopic.png");
            }
            //存入新添加的学生记录
            boolean flag = DaoFactory.getStudentDao().insertStudent(student);
            if (flag) {
                response.sendRedirect(request.getContextPath() + "/DisplayServlet");
            } else {
                //对发生的异常进行捕获，然后转发到输入页面，显示错误信息提示
                String errValue = "学生记录插入失败，请检查输入信息是否有误或与系统管理员联系！";
                request.setAttribute("message", errValue);
                request.getRequestDispatcher("insert.jsp").forward(request, response);
            }
        } catch (Exception ex) {
            //对发生的异常进行捕获，然后转发到输入页面，显示错误信息提示
            String errValue = "学生记录插入失败，请检查输入信息是否有误或与系统管理员联系！";
            request.setAttribute("message", errValue);
            request.getRequestDispatcher("insert.jsp").forward(request, response);
        }
    }

    //取得上传文件名
    private String getFileSuffixName(String header) {
        /**
         * 请求头的格式：form-data; name="file"; filename="a.jpg" String[] tempArr1 =
         * header.split(";");代码执行完之后，在不同的浏览器下，tempArr1数组里面的内容稍有区别
         * 火狐或者google浏览器下：tempArr1={form-data,name="file",filename="snmp4j--api.zip"}
         * IE浏览器下：tempArr1={form-data,name="file",filename="E:\snmp4j--api.zip"}
         */
        String[] tempArr1 = header.split(";");
        /**
         * 火狐或者google浏览器下：tempArr2={filename,"snmp4j--api.zip"}
         * IE浏览器下：tempArr2={filename,"E:\snmp4j--api.zip"}
         */
        String[] tempArr2 = tempArr1[2].split("=");
        //获取文件名，兼容各种浏览器的写法
        String fileName = tempArr2[1].substring(tempArr2[1].lastIndexOf("\\") + 1).replaceAll("\"", "");
        String suffix = fileName.substring(fileName.lastIndexOf("."));
        return suffix;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
