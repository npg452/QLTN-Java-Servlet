package com_uniquedeveloper_registration;

import java.io.IOException;
import java.io.Reader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/portfolioModal1", "/portfolioModal2","/portfolioModal3","/portfolioModal4","/portfolioModal5","/portfolioModal6"})
    
public class FormDatPhong  extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Lấy thông tin từ biểu mẫu HTML
	    String inputname = request.getParameter("inputname");
	    String inputphone = request.getParameter("inputphone");
	    String inputaddress = request.getParameter("inputaddress");
	    String inputemail = request.getParameter("inputemail");
	    String gender = request.getParameter("gender");
	    String diachiphongtro = request.getParameter("diachiphongtro");
	    String dientich = request.getParameter("dientich");
	    String nguoio = request.getParameter("nguoio");
	    String thoigian = request.getParameter("thoigian");
	    String loinhan = request.getParameter("loinhan");
	    // Kết nối đến cơ sở dữ liệu MySQL
	    Connection con = null;
	    PreparedStatement pst = null;
	    int rowsInserted = 0; 
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","");
	        
	        // Thực hiện truy vấn SQL INSERT
	        pst = con.prepareStatement("INSERT INTO formdatphong(inputname,inputphone,inputaddress,inputemail,gender,diachiphongtro,dientich,nguoio,thoigian,loinhan) VALUES(?,?,?,?,?,?,?,?,?,?)");
	        pst.setString(1, inputname);
	        pst.setString(2, inputphone);
	        pst.setString(3, inputaddress);
	        pst.setString(4, inputemail);
	        pst.setString(5, gender);
	        pst.setString(6, diachiphongtro);
	        pst.setString(7, dientich);
	        pst.setString(8, nguoio);
	        pst.setString(9, thoigian);
	        pst.setString(10, loinhan);
	        rowsInserted = pst.executeUpdate();
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        // Đóng kết nối đến cơ sở dữ liệu
	        try {
	            if (pst != null) {
	                pst.close();
	            }
	            if (con != null) {
	                con.close();
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    // Định tuyến yêu cầu đến trang JSP để hiển thị kết quả
	    RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
	    if (rowsInserted > 0) {
	        request.setAttribute("contactForm1", "success");
	    } else {
	        request.setAttribute("contactForm1", "failed");
	    }
	    dispatcher.forward(request, response);
	}
}
