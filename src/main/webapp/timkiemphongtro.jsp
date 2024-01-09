<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!doctype html>
<html lang="en">

<head>
  <title>Phòng trọ</title>

  <!-- Bootstrap CSS v5.2.1 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <link rel="stylesheet" href="css/search.css">
  <style>
    .form-dathphong {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #ffffff;
      padding: 20px;
      border: 1px solid #000000;
      z-index: 9999;
    }
  </style>
</head>

<body>
  
  <header>
    <div class="container">
      <div class="container-inner full text-center">
        <div class="menu">
          <ul class="nav_top">
            <li class="active"><a href="index.jsp">Trang chủ</a></li>
            <li class=""><a href="form-dathphong" id="link-dathphong">Đặt phòng</a></li>
            <li class=""><a href="logout">Đăng xuất</a></li>
          </ul>
        </div>
        <br> <br> <label class="search-form_button"></label>
      </div>
    </div>
  </header>

  <div id="main-body" >
    <div class="container">
      <!-- ////////////// -->
      <br>
      <div id="center" class="right">
    
    <div class="hostel hostel-list main-list">
      <div class="module">
        <div class="modulecontent">
          <div class="line"></div>
          <div class="item vip column"
            title="Cho thuê phòng ở cao cấp Khu nhà ở Nam Long Quận 9">
            
            <%
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						String url = "jdbc:mysql://localhost:3306/youtube";
						String username = "root";
						String password = "";
						String query = "select * from timkiem";
						Connection conn = DriverManager.getConnection(url, username, password);
						Statement stmt = conn.createStatement();
						ResultSet rs = stmt.executeQuery(query);
						while (rs.next()) {
					%>
               		 <div class="border">
              <div class="image">
              	<img src="<%=rs.getString(1)%>" alt="" style="width:450px; height:250px;">
              </div>
              <div class="info col">
                <div class="star">
                  <span class="local" style="padding-bottom:34px"> <%=rs.getString(3)%>
                  </span>
                </div>
                <h6 class="title vip" style="padding-bottom:14px">
                   <%=rs.getString(4)%>
                </h6>
                <div class="location-area ">
                  <dl class="address">
                    <dt>Diện tích: <%=rs.getString(5)%></dt>
                  </dl>
                </div>
                <dl class="contact">
                  <div class="price">
                    <%=rs.getString(6)%> VNĐ</span>
                  </div>
                  <span class="published">Hôm nay</span>
                </dl>
              </div>
            </div>
					<%
					}
					%>

					<%
					rs.close();
					stmt.close();
					conn.close();
					} catch (Exception e) {
					e.printStackTrace();
					}
					%>
            
          </div>

	
  </div>
</div>
</div>
</div>
    </div>
  </div>

  <div id="form-dathphong" class="form-dathphong" style="display: none;">
    <h3>Booking Form</h3>
    <form action="booking.php" method="post">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required><br><br>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required><br><br>
      <label for="phone">Phone Number:</label>
      <input type="tel" id="phone" name="phone" required><br><br>
      <label for="check-in">Check-In Date:</label>
      <input type="date" id="check-in" name="check-in" required><br><br>
      <label for="check-out">Check-Out Date:</label>
      <input type="date" id="check-out" name="check-out" required><br><br>
      <label for="comments">Comments:</label>
      <textarea id="comments" name="comments"></textarea><br><br>
      <input type="submit" value="Submit">
    </form>
  </div>
  
  <script>
    document.getElementById("link-dathphong").addEventListener("click", function(event) {
      event.preventDefault();

      document.getElementById("form-dathphong").style.display = "block";
    });

    document.addEventListener("click", function(event) {
      if (!event.target.closest("#form-dathphong")) {
        document.getElementById("form-dathphong").style.display = "none";
      }
    });
  </script>

</body>

</html>
