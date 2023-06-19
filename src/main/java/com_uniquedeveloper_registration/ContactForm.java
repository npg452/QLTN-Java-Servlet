package com_uniquedeveloper_registration;

import java.io.IOException;
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

@WebServlet("/contact")
public class ContactForm extends HttpServlet{
    
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // Lấy thông tin từ biểu mẫu HTML
	    String name = request.getParameter("name");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phone");
	    String message = request.getParameter("message");
	    
	    // Kết nối đến cơ sở dữ liệu MySQL
	    Connection con = null;
	    PreparedStatement pst = null;
	    int rowsInserted = 0;
	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/youtube","root","");
	        
	        // Thực hiện truy vấn SQL INSERT
	        pst = con.prepareStatement("INSERT INTO formcontact(name,email,phone,message) VALUES(?,?,?,?)");
	        pst.setString(1, name);
	        pst.setString(2, email);
	        pst.setString(3, phone);
	        pst.setString(4, message);
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
	        request.setAttribute("contactForm", "success");
	    } else {
	        request.setAttribute("contactForm", "failed");
	    }
	    dispatcher.forward(request, response);
	}
}