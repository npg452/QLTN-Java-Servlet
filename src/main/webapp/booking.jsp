<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
<head>
	<title>Quản lý đơn đặt phòng trọ</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="css/hmm.css">
	
</head>
<body>
	<nav>
        <div class="wrapper">
            <div class="logo"><span>Quản lí </span>đơn đặt phòng trọ</div>
            <ul class="nav-links">
                <label for="close-btn" class="btn close-btn"><i class="fas fa-times"></i></label>
               <!--  <li><a href="#">Trang chủ</a></li> -->
                <li><a href="logout">Đăng xuất</a></li>
            </ul>
            <label for="menu-btn" class="btn menu-btn"><i class="fas fa-bars"></i></label>
        </div>
    </nav>
	<div class="table-responsive" style="padding-top: 80px">
		<table class="table">
			<thead>
				<tr>
					<th>Họ tên</th>
					<th>SĐT</th>
					<th>Địa chỉ hiện tại</th>
					<th>Email</th>
					<th>Giới tính</th>
					<th>Thời gian đặt cọc</th>
					<th>Địa chỉ phòng trọ</th>
					<th>Diện tích phòng trọ</th>
					<th>Số người ở cùng</th>
					<th>Lời nhắn</th>
					<th>Xác nhận</th>
					<th>Hủy đơn đặt</th>
				</tr>
			</thead>
			<tbody>
				<%
					try {
					    Class.forName("com.mysql.jdbc.Driver");
					    String url = "jdbc:mysql://localhost:3306/youtube";
					    String username = "root";
					    String password = "";
					    String query = "SELECT * FROM formdatphong";
					    Connection conn = DriverManager.getConnection(url, username, password);
					
					    Statement stmt = conn.createStatement();
					    ResultSet rs = stmt.executeQuery(query);
					
					    while (rs.next()) {
					        String inputname = rs.getString("inputname");
					        String inputphone = rs.getString("inputphone");
					        String inputaddress = rs.getString("inputaddress");
					        String inputemail = rs.getString("inputemail");
					        String gender = rs.getString("gender");
					        String diachiphongtro = rs.getString("diachiphongtro");
					        String dientich = rs.getString("dientich");
					        String nguoio = rs.getString("nguoio");
					        String thoigian = rs.getString("thoigian");
					        String loinhan = rs.getString("loinhan");
					        %>
					        <tr>
					            <td><%=inputname%></td>
					            <td><%=inputphone%></td>
					            <td><%=inputaddress%></td>
					            <td><%=inputemail%></td>
					            <td><%=gender%></td>
					            <td><%=thoigian%></td>
					            <td><%=diachiphongtro%></td>					            
					            <td><%=dientich%></td>
					            <td><%=nguoio%></td>
					            <td><%=loinhan%></td>
					            <td><button class="btn btn-success">Xác nhận</button></td>
					            <td><button class="btn btn-danger">Hủy đơn đặt</button></td>
					        </tr>
					        <%
					    }
					    rs.close();
					    stmt.close();
					    conn.close();
					} catch (Exception e) {
					    e.printStackTrace();
					}
				%>
			</tbody>
		</table>
	</div>
	
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
	<script>
	$(document).ready(function() {
		  // Xử lý sự kiện click trên nút Xác nhận
		  $(".btn-success").click(function() {
		    // Lấy thông tin của đơn đặt từ hàng chứa nút Xác nhận
		    var row = $(this).closest("tr");
		    var inputname = row.find("td:eq(0)").text();
		    var inputphone = row.find("td:eq(1)").text();
		    var inputaddress = row.find("td:eq(2)").text();
		    var inputemail = row.find("td:eq(3)").text();
		    var gender = row.find("td:eq(4)").text();
		    var diachiphongtro = row.find("td:eq(6)").text();
		    var dientich = row.find("td:eq(7)").text();
		    var nguoio = row.find("td:eq(8)").text();
		    var thoigian = row.find("td:eq(5)").text();
		    var loinhan = row.find("td:eq(9)").text();
		    
		    // Thực hiện các thao tác xác nhận đơn đặt tại đây

		    // Chuyển trạng thái của nút nhấn sang đã xác nhận
		    $(this).text("Đã xác nhận");
		    $(this).removeClass("btn-success");
		    $(this).addClass("btn-secondary");
		    $(this).attr("disabled", "disabled");
		  });
		  
		  // Xử lý sự kiện click trên nút Hủy đơn đặt
		  $(".btn-danger").click(function() {
		    // Lấy thông tin của đơn đặt từ hàng chứa nút Hủy đơn đặt
		    var row = $(this).closest("tr");
		    var inputname = row.find("td:eq(0)").text();
		    var inputphone = row.find("td:eq(1)").text();
		    var inputaddress = row.find("td:eq(2)").text();
		    var inputemail = row.find("td:eq(3)").text();
		    var gender = row.find("td:eq(4)").text();
		    var diachiphongtro = row.find("td:eq(6)").text();
		    var dientich = row.find("td:eq(7)").text();
		    var nguoio = row.find("td:eq(8)").text();
		    var thoigian = row.find("td:eq(5)").text();
		    var loinhan = row.find("td:eq(9)").text();
		    
		    // Hiển thị thông báo xác nhận hủy đơn đặt
		    var confirmCancel = confirm("Bạn có muốn hủy đơn đặt này không?");
		    
		    if (confirmCancel) {
		      // Thực hiện xóa hàng trong bảng và cập nhật trong database tại đây

		      // Xóa hàng chứa nút Hủy đơn đặt
		      row.remove();
		    }
		  });
		});

	</script>
</body>
</html>