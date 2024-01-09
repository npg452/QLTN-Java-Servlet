

<%
	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        
        <title>Website tìm trọ và đặt phòng trọ</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#page-top">TÌM TRỌ VÀ ĐẶT PHÒNG TRỌ</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#masthead">Trang chủ</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Giới thiệu</a></li>
                        <li class="nav-item"><a class="nav-link" href="timkiemphongtro.jsp">Phòng trọ</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Liên hệ</a></li>
                        <li class="nav-item"><a class="nav-link " href="logout">Quản lý </a></li>
                        <li class="nav-item"><a class="nav-link " href="logout">Đăng xuất</a></li>
						<li class="nav-item bg-danger"><a class="nav-link" href="logout"><%=session.getAttribute("name") %></a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead" id="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold"> Chào mừng bạn đến với website tìm phòng và đặt phòng trọ</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Tại đây chúng tôi sẽ cung cấp cho bạn những căn phòng trọ hợp lí, phù hợp với ngân sách của các bạn </p>
                        <a class="btn btn-primary btn-xl" href="#portfolio">Khám phá ngay</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
       
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mt-0">Dịch vụ của chúng tôi</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Hỗ trợ</h3>
                            <p class="text-muted mb-0"> Chúng tôi hỗ trợ bạn tìm kiếm phòng trọ trong thành phố Đà Nẵng một cách nhanh chóng và hiệu quả nhất </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Giá thành</h3>
                            <p class="text-muted mb-0"> Chúng tôi luôn ưu tiên những phòng trọ với mức giá hợp lý và chất lượng phòng tốt, phù hợp với đa số người dùng đặc biệt là sinh viên </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Cộng đồng</h3>
                            <p class="text-muted mb-0">Chúng tôi đã xây dựng một cộng đồng giúp chủ nhà trọ và người thuê nhà kết nối với nhau một cách dễ dàng và thuận tiện hơn </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Ủng hộ</h3>
                            <p class="text-muted mb-0">Mong rằng trang web của chúng tôi sẽ nhận được sự đánh giá nhiệt tình từ các bạn</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Phòng trọ mới nhất</h2>
                <!-- Icon Divider-->
                <div class="divider-custom">
                    <div class="divider-custom-line"></div>
                    <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                    <div class="divider-custom-line"></div>
                </div>
                <!-- Portfolio Grid Items-->
                <div class="row justify-content-center">
                    <!-- Portfolio Item 1-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal1">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/1.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/2.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/3.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/4.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/5.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tìm hiểu thêm</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/6.jpg" alt="..." />
                        </div>
                    </div>
                </div>
            </div>
        </section>
           <!-- Copyright Section-->
          
        <!-- Portfolio Modals-->
        <!-- Portfolio Modal 1-->
      <!--   <section id="datphong"> --> 
        	<div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" aria-labelledby="portfolioModal1" aria-hidden="true">
            <div class="modal-dialog modal-xl" id="l1">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/1.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Địa chỉ: 67 Lê Văn Hiến, Phường Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Nguyễn Văn An</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">012345678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">012345678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">nguyenvana@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Giới tính</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                             <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
							<div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên hệ với bạn sớm nhất.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Portfolio Modal 2-->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" aria-labelledby="portfolioModal2" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/2.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 100 Núi Thành, Hòa Cường Nam, Quận Hải Châu, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Trần Thị Minh</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">012363678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">012363678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">tranthiminh@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Giới tính</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                         <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                             <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
                           <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên hệ với bạn sớm nhất.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Portfolio Modal 3-->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" aria-labelledby="portfolioModal3" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/3.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 335 Trường Chinh, Quận Cẩm Lệ, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Lê Thị My</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">098765432</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">098765432</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">lethimy@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Giới tính</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                            <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên hệ với bạn sớm nhất.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Portfolio Modal 4-->
       <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" aria-labelledby="portfolioModal4" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/4.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 47 Phan Đăng Lưu, Quận Hải Châu, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Nguyễn Văn Ba</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">087654321</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">087654321</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">nguyenvanba@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Giới tính</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          	<div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                             <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
                           <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên lạc sớm nhất với bạn.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Portfolio Modal 5-->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" aria-labelledby="portfolioModal5" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/5.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Địa chỉ: 88 Nam Kì Khởi Nghĩa, Phường Hòa Quý, Quận Ngũ Hành Sơn, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Nguyen Tran Anh</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">067895432</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">067895432</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">nguyentrananh@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Giới tính</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                             <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
                           <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- Portfolio Modal 6-->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" aria-labelledby="portfolioModal6" aria-hidden="true">
            <div class="modal-dialog modal-xl">
              <div class="modal-content">
                <div class="modal-header border-0">
                  <button class="btn-close" type="button" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center pb-5">
                  <div class="container">
                    <div class="row justify-content-center">
                      <div class="col-lg-9">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thông tin phòng trọ</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/6.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 214 Trưng Vương, Quận Hải Châu, Đà Nẵng.</p>
                        <h3 style="text-align: left;">Thông tin mô tả</h3>
                        <p style="text-align: left;">
                          Cho thuê phòng trọ 12m2, 16m2, 20m2, 24m2, 30m2 từ 1,8 triệu - 3 triệu tại 67 Lê Văn Hiến - Đà Nẵng
                          <br>
                          Phòng trọ mới xây, có gác lửng, tiện nghi. Có vệ sinh trong phòng, có phòng để xe chung, ánh sáng đầy đủ thoáng khí. Trần cách nhiệt mát mẻ.
                          <br>
                          1. Phòng 12m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.300.000d <br>
                          2. Phòng 16m2: Cửa sổ, bếp, WC, gác lửng chứa đồ 3m2, để xe trước phòng. Lối vào cách đường lớn 15m <br>
                          Giá thuê: 1.500.000d <br>
                          3. Phòng 20m2 + Gác lửng 4m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.000.000d  <br>
                          4. Phòng 24m2 + Gac lung 3m2: Cửa sổ, bếp, WC, cho để xe, hiên hóng gió.
                          Lối vào cách đường lớn 25m. <br>
                          Giá thuê : 2.500.000d  <br>
                          5. Phòng 30m2 : Cửa sổ , phòng bếp + giặt riêng, WC, gác lửng chứa đồ 2m2, cửa phụ ra chổ để xe,hiên hóng gió. Lối vào cách đường lớn 20m. Có phòng để xe và sinh hoạt <br>
                          Giá thuê: 3.000.000d  
                        </p>
                        <h3>Thông tin liên hệ chủ trọ</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Liên hệ</td>
                            <td class="table-light">Nguyen Van Minh</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Điện thoại</td>
                            <td class="table-light">012345678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Zalo</td>
                            <td class="table-light">012345678</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Email</td>
                            <td class="table-light">nguyenvanminh@gmail.com</td>
                          </tr>
                        </table>
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.9382257888125!2d108.22088631485259!3d16.04002488889164!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31427ebe67e4e9d1%3A0x3d9a82d4f7d5c2c9!2zNjcgTGUgVmFuIEhlaW4sIFBob25nIFBob2EgUGxhemEsIFF1YW4gTmd1IEhhbmhzb24gU29uLCBEYSBOYW5n!5e0!3m2!1sen!2s!4v1623648339353!5m2!1sen!2s" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                        <hr>
                        <br>
                        <h6>Nếu bạn muốn đặt trước phòng trọ có thể điền vào form dưới đây:</h6> <br>
                        <h3>Form đặt phòng</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Tên của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Tên của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="Số điện thoại của bạn *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Địa chỉ hiện tại của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Địa chỉ của bạn là bắt buộc</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email của bạn *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email của bạn là bắt buộc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nữ
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thời gian đặt cọc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chọn địa chỉ của phòng trọ" disabled selected hidden>Chọn địa chỉ của phòng trọ</option>
                              <%
								try
								{
									Class.forName("com.mysql.jdbc.Driver");
									String url = "jdbc:mysql://localhost:3306/youtube";
									String username = "root";
									String password = "";
									String query = "select * from phongtrolvh";
									Connection conn = DriverManager.getConnection(url, username, password);
									Statement stmt = conn.createStatement();
									ResultSet rs = stmt.executeQuery(query);
									while (rs.next()) {
								%>
								<option value="<%=rs.getString(2)%>"><%=rs.getString("diachi") %></option>
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
                                
                              </select>
                            </div>
                            <div class="form-group col-md-6">
						    <select class="form-control" id="dientich" name="dientich" required>
						        <option value="Chọn diện tích phòng trọ" disabled selected hidden>Chọn diện tích phòng trọ</option>
						        <% 
						        try {
						            Class.forName("com.mysql.jdbc.Driver");
						            String url = "jdbc:mysql://localhost:3306/youtube";
						            String username = "root";
						            String password = "";
						            String query = "select * from phongtrolvh";
						            Connection conn = DriverManager.getConnection(url, username, password);
						            Statement stmt = conn.createStatement();
						            ResultSet rs = stmt.executeQuery(query);
						            while (rs.next()) {
						                String dientich = rs.getString("dientich");
						                int giathanh = rs.getInt("giathanh");
						                if (dientich != null && giathanh != 0) {
						        %>
						        <option value="<%=rs.getString(3)%>">Phòng <%=dientich%> - <%=giathanh%>VNĐ</option>
						        <%
						                }
						            }
						            rs.close();
						            stmt.close();
						            conn.close();
						        } catch (Exception e) {
						            e.printStackTrace();
						        }
						        %>
						    </select>
						</div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="Số người ở cùng" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Thêm lời nhắn"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cảm ơn bạn đã đặt phòng. Chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Đặt phòng
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoát
                            </button>
                           </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
     <!--   </section> --> 
        <!-- Contact-->
        <section class="page-section" id="contact">
    <div class="container px-4 px-lg-5">
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-8 col-xl-6 text-center">
                <h2 class="mt-0">Liên hệ với chúng tôi!</h2>
                <hr class="divider" />
                <p class="text-muted mb-5">Vui lòng điền thông tin vào form!</p>
            </div>
        </div>
        <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
            <div class="col-lg-6">
                <form id="contactForm" action="contact" method="post">
                    <!-- Name input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." data-sb-validations="required" required/>
                        <label for="name">Họ tên</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">Tên là bắt buộc.</div>
                    </div>
                    <!-- Email address input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="email" name="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" required/>
                        <label for="email">Địa chỉ email</label>
                        <div class="invalid-feedback" data-sb-feedback="email:required">Địa chỉ email là bắt buộc.</div>
                        <div class="invalid-feedback" data-sb-feedback="email:email">Email không đúng.</div>
                    </div>
                    <!-- Phone number input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="phone" name="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" required/>
                        <label for="phone">Số điện thoại</label>
                        <div class="invalid-feedback" data-sb-feedback="phone:required">Số điện thoại là bắt buộc</div>
                    </div>
                    <!-- Message input-->
                    <div class="form-floating mb-3">
                        <textarea class="form-control" id="message" name="message" type="text"placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required" required></textarea>
                        <label for="message">Lời nhắn</label>
                        <div class="invalid-feedback" data-sb-feedback="message:required">Tin nhắn là bắt buộc.</div>
                    </div>
                    <!-- Submit Button-->
                    <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Gửi</button></div>
                </form>
            </div>
        </div>
        <div class="row gx-4 gx-lg-5 justify-content-center">
            <div class="col-lg-4 text-center mb-5 mb-lg-0">
                <i class="bi-phone fs-2 mb-3 text-muted"></i>
                <div>0123456789</div>
            </div>
        </div>
    </div>
</section>
	
	<script type="text/javascript">
	const submitButton = document.getElementById('submitButton');

	submitButton.addEventListener('click', function() {
	  alert('Đặt phòng thành công');
	});

	</script>
		
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Bản quyền &copy; 2023 - NTP</div></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    </body>
</html>

