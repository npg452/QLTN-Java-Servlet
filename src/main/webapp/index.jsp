

<%
	if(session.getAttribute("name")==null)
	{
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Website Tim Tro</title>
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
                <a class="navbar-brand" href="#page-top">TIM TRO VA DAT PHONG</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#masthead">Trang chu</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Gioi thieu</a></li>
                        <li class="nav-item"><a class="nav-link" href="phongtro.jsp">Phong tro</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Lien he</a></li>
                        <li class="nav-item"><a class="nav-link " href="logout">Dang xuat</a></li>
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
                        <h1 class="text-white font-weight-bold">Chao mung ban den voi website tim phong va dat phong tro</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">Tai day chung toi se cung cap cho ban nhung can phong tro hop li, phu hop ngan sach cua cac ban</p>
                        <a class="btn btn-primary btn-xl" href="#portfolio">Kham pha ngay</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
       
        <!-- Services-->
        <section class="page-section" id="services">
            <div class="container px-4 px-lg-5">
                <h2 class="page-section-heading text-center text-uppercase text-secondary mt-0">Dich vu cua chung toi</h2>
                <hr class="divider" />
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-gem fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Ho tro</h3>
                            <p class="text-muted mb-0">Chung toi ho tro ban tim kiem phong tro trong thanh pho Da Nang mot cach nhanh chong va hieu qua nhat</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-laptop fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Gia thanh</h3>
                            <p class="text-muted mb-0">Chung toi luon uu tien gioi thieu nhung phong tro voi muc gia hop ly va chat luong phong tot, phu hop voi da so nguoi dung dac biet la sinh vien</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-globe fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Cong dong</h3>
                            <p class="text-muted mb-0">Chung toi da xay dung mot cong dong giup chu nha tro va nguoi thue nha ket noi voi nhau mot cach de dang va thuan tien hon</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 text-center">
                        <div class="mt-5">
                            <div class="mb-2"><i class="bi-heart fs-1 text-primary"></i></div>
                            <h3 class="h4 mb-2">Ung ho</h3>
                            <p class="text-muted mb-0">Mong rang trang web cua chung toi se nhan duoc su danh gia nhiet tinh tu cac ban</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="page-section portfolio" id="portfolio">
            <div class="container">
                <!-- Portfolio Section Heading-->
                <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Phong tro moi nhat</h2>
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
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/1.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 2-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal2">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/2.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 3-->
                    <div class="col-md-6 col-lg-4 mb-5">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal3">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/3.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 4-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal4">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/4.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 5-->
                    <div class="col-md-6 col-lg-4 mb-5 mb-md-0">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal5">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
                            </div>
                            <img class="img-fluid" src="assets/img/portfolio/phongtro/5.jpg" alt="..." />
                        </div>
                    </div>
                    <!-- Portfolio Item 6-->
                    <div class="col-md-6 col-lg-4">
                        <div class="portfolio-item mx-auto" data-bs-toggle="modal" data-bs-target="#portfolioModal6">
                            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                                <div class="portfolio-item-caption-content text-center text-white"><button class="ask">Tim hieu them</button></div>
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/1.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 67 Le Van Hien, Phuong Hoa Quy, Quan Ngu Hanh Son, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 67 Le Van Hien - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Nguyen Van A</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/2.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 100 Nui Thanh, Hoa Cuong Nam, Quan Hai Chau, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 100 Nui Thanh - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Tran Thi Minh</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/3.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 335 Truong Chinh, Quan Cam Le, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 335 Truong Chinh - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Le Thi My</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/4.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 47 Phan Dang Luu, Quan Hai Chau, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 47 Phan Dang Luu - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Nguyen Van Ba</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          	<div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/5.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 88 Nam Ky Khoi Nghia, Phuong Hoa Quy, Quan Ngu Hanh Son, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 88 Nam Ky Khoi Nghia - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Nguyen Tran Anh</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">Thong tin phong tro</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                          <div class="divider-custom-line"></div>
                          <div class="divider-custom-icon"><i class="fas fa-star"></i></div>
                          <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Image-->
                        <img class="img-fluid rounded mb-5" src="assets/img/portfolio/phongtro/6.jpg" alt="..." />
                        <!-- Portfolio Modal - Text-->
                        <p class="mb-4">Dia chi: 214 Trung Vuong, Quan Hai Chau, Da Nang.</p>
                        <h3 style="text-align: left;">Thong tin mo ta</h3>
                        <p style="text-align: left;">
                          Cho thue phong tro 12m2, 16m2, 20m2, 24m2, 30m2 tu 1,8 trieu - 3 trieu tai 214 Trung Vuong - Da Nang
                          <br>
                          Phong tro moi xay, co gac lung,tien nghi. Co ve sinh trong phong. Co phong de xe chung. Anh sang day du, thoang khi. Tran cach nhiet mat me.
                          <br>
                          1. Phong 12m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.300.000d <br>
                          2. Phong 16m2: Cua so, Bep, WC, Gac lung chua do 3m2, de xe truoc phong. Loi vao cach duong lon 15m <br>
                          Gia thue: 1.500.000d <br>
                          3. Phong 20m2 + Gac lung 4m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.000.000d  <br>
                          4. Phong 24m2 + Gac lung 3m2: Cua so , Bep, WC, Gac lung, cho de xe, hien hong gio.
                          Loi vao cach duong lon 25m. <br>
                          Gia thue : 2.500.000d  <br>
                          5. Phong 30m2 : Cua so , Phong bep + giat rieng, WC, gac lung chua do 2m2, cua phu ra cho de xe, hien hong gio. Loi vao rieng tu kiet, cach duong lon 20m. Kep phong de xe va sinh hoat. <br>
                          Gia thue 3.000.000d  
                        </p>
                        <h3>Thong tin lien he</h3>
                        <table class="table table-hover" style="text-align: left;">
                          <tr class="table-primary">
                            <td class="table-light">Lien he</td>
                            <td class="table-light">Nguyen Van A</td>
                          </tr>
                          <tr class="table-primary">
                            <td class="table-light">Dien thoai</td>
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
                        <h6>Neu ban muon dat truoc phong tro co the dien vao form duoi day:</h6> <br>
                        <h3>Form dat phong</h3>
                        <form action="portfolioModal1" id="contactForm" method="post" data-sb-form-api-token="API_TOKEN">
                          <div class="row">
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputname" name="inputname" type="text" placeholder="Ten cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="name:required">Ten cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="inputphone" name="inputphone" type="tel" placeholder="So dien thoai cua ban *" data-sb-validations="required" required/>
                              <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputaddress" name="inputaddress" type="text" placeholder="Dia chi hien tai cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="inputaddress:required">Dia chi cua ban la bat buoc.</div>
                            </div>
                            <div class="form-group col-md-6">
                                <input class="form-control" id="inputemail" name="inputemail" type="email" placeholder="Email cua ban *" data-sb-validations="required" required/>
                                <div class="invalid-feedback" data-sb-feedback="phone:required">Email cua ban la bat buoc.</div>
                            </div>
                            <br>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="inputgender" class="form-label" style="float: left;">Gioi tinh</label> 
                                <input type="checkbox" name="gender" value="Nam" class="form-check-label"> Nam
                                <input type="checkbox" name="gender" value="Nu" class="form-check-label"> Nu
                            </div>
                            <br>
                            <div class="form-group col-md-6">
                                <label for="thoigian" style="text-align: left;">Thoi gian dat coc:
                                    <input type="date" name="thoigian" id="thoigian" required>
                                </label>
                            </div>
                          </div>
                          <div class="row">
                          <div class="form-group col-md-6">
                              <select class="form-control" id="diachiphongtro" name="diachiphongtro" required>
                              <option value="Chon dia chi cua phong tro" disabled selected hidden>Chon dia chi cua phong tro</option>
                                <option value="67 Le Van Hien">67 Le Van Hien</option>
                                <option value="100 Nui Thanh">100 Nui Thanh</option>
                                <option value="335 Truong Chinh">335 Truong Chinh</option>
                                <option value="47 Phan Dang Luu">47 Phan Dang Luu</option>
                                <option value="88 Nam Ky Khoi Nghia">88 Nam Ky Khoi Nghia</option>
                                <option value="214 Trung Vuong">214 Trung Vuong</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <select class="form-control" id="dientich" name="dientich" required>
                              <option value="Chon dien tich phong tro" disabled selected hidden>Chon dien tich phong tro</option>
                                <option value="12m2">Phong 12m2 - 1.300.000d</option>
                                <option value="16m2">Phong 16m2 - 1.500.000d</option>
                                <option value="20m2">Phong 20m2 - 2.000.000d</option>
                                <option value="24m2">Phong 24m2 - 2.500.000d</option>
                                <option value="30m2">Phong 30m2 - 3.000.000d</option>
                              </select>
                            </div>
                            <div class="form-group col-md-6">
                              <input class="form-control" id="nguoio" name="nguoio" type="number" placeholder="So nguoi o cung" />
                            </div>
                          </div>
                          <div class="form-group">
                            <textarea class="form-control" id="loinhan" name="loinhan" placeholder="Them thong tin"></textarea>
                          </div>
                          <div class="d-none" data-sb-form-success="true">
                            <div class="text-center">
                              <p>Cam on ban da dat phong. Chung toi se lien he voi ban trong thoi gian som nhat.</p>
                            </div>
                          </div>
                          <br>
                          <!-- <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Dat phong</button></div> -->
                          <div style="text-align: center;">
                            <button class="btn btn-primary" id="submitButton" type="submit" style="width: 130px; text-align: center;">
                                
                                Dat phong
                            </button>
                            <button class="btn btn-primary" data-bs-dismiss="modal" style="width: 100px;">
                                <i class="fas fa-xmark fa-fw"></i>
                                Thoat
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
                <h2 class="mt-0">Lien he voi chung toi!</h2>
                <hr class="divider" />
                <p class="text-muted mb-5">Vui long dien thong tin vao form!</p>
            </div>
        </div>
        <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
            <div class="col-lg-6">
                <form id="contactForm" action="contact" method="post">
                    <!-- Name input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="name" name="name" type="text" placeholder="Enter your name..." data-sb-validations="required" required/>
                        <label for="name">Ho ten</label>
                        <div class="invalid-feedback" data-sb-feedback="name:required">Ten la bat buoc.</div>
                    </div>
                    <!-- Email address input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="email" name="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" required/>
                        <label for="email">Dia chi email</label>
                        <div class="invalid-feedback" data-sb-feedback="email:required">Dia chi email la bat buoc.</div>
                        <div class="invalid-feedback" data-sb-feedback="email:email">Email khong dung.</div>
                    </div>
                    <!-- Phone number input-->
                    <div class="form-floating mb-3">
                        <input class="form-control" id="phone" name="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" required/>
                        <label for="phone">So dien thoai</label>
                        <div class="invalid-feedback" data-sb-feedback="phone:required">So dien thoai la bat buoc</div>
                    </div>
                    <!-- Message input-->
                    <div class="form-floating mb-3">
                        <textarea class="form-control" id="message" name="message" type="text"placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required" required></textarea>
                        <label for="message">Tin nhan</label>
                        <div class="invalid-feedback" data-sb-feedback="message:required">Tin nhan la bat buoc.</div>
                    </div>
                    <!-- Submit Button-->
                    <div class="d-grid"><button class="btn btn-primary btn-xl" id="submitButton" type="submit">Gui</button></div>
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
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2023 - NTP</div></div>
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

