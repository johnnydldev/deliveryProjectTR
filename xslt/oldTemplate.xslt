<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

      <!-- Main Template-->
      <xsl:template match="main">
        
        <html lang="en">

          <head>
            <meta charset="utf-8"></meta>
              <title><![CDATA[Environs - Environmental & Nature Website Template]]></title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport"></meta>
            <meta content="" name="keywords"></meta>
            <meta content="" name="description"></meta>

                    <!-- Google Web Fonts -->
                      <link rel="preconnect" href="https://fonts.googleapis.com"></link>
                      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin=""></link>

                          <!-- Icon Font Stylesheet -->
                          <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
                          <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>

                            <!-- Libraries Stylesheet -->
                            <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
                              <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet"/>


                                <!-- Customized Bootstrap Stylesheet -->
                              <link href="css/bootstrap.min.css" rel="stylesheet"></link>

                                  <!-- Template Stylesheet -->
                              <link href="css/style.css" rel="stylesheet"></link>

            <!-- Import of get message script -->
            <script type="module" src="js/GetMessage.js"></script>

            
            <script>
              // Definir la función initMap globalmente
              function initMap() {
              // Asegúrate de que aquí inicializas el mapa correctamente
              const mapOptions = {
              center: { lat: 19.06861682352695, lgt: -98.17162251698159 },  // Cambia estas coordenadas por las deseadas
              zoom: 8
              };
              const map = new google.maps.Map(document.getElementById('map'), mapOptions);
              }
            </script>

   
            <script>
              <![CDATA[
			          (g=>{var h,a,k,p="The Google Maps JavaScript API",c="MyConnectionAPIGoogle",l="importLibrary",q="__ib__",m=document,b=window;b=b[c]||(b[c]={});var d=b.maps||(b.maps={}),r=new Set,e=new URLSearchParams,u=()=>h||(h=new Promise(async(f,n)=>{await (a=m.createElement("script"));e.set("libraries",[...r]+"");for(k in g)e.set(k.replace(/[A-Z]/g,t=>"_"+t[0].toLowerCase()),g[k]);e.set("callback",c+".maps."+q);a.src=`https://maps.${c}apis.com/maps/api/js?`+e;d[q]=f;a.onerror=()=>h=n(Error(p+" could not load."));a.nonce=m.querySelector("script[nonce]")?.nonce||"";m.head.append(a)}));d[l]?console.warn(p+" only loads once. Ignoring:",g):d[l]=(f,...n)=>r.add(f)&&u().then(()=>d[l](f,...n))})({
			          key: "AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs",
			          // Add other bootstrap parameters as needed, using camel case.
			          // Use the 'v' parameter to indicate the version to load (alpha, beta, weekly, etc.)
			          });]]>
            </script>

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCWeeateTaYGqsHhNcmoDfT7Us-vLDZVPs&amp;callback=initMap" async="" defer=""></script>

            <link href="css/puzzle.css" rel="stylesheet" type="text/css"></link>
            <script src="js/showMessage.js"></script>
            
            <!-- Import of JQuery from google API-->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

          </head>

          <body>

            <!-- Spinner Start -->
            <div id="spinner" class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
              <div class="spinner-grow text-primary" role="status"></div>
            </div>
            <!-- Spinner End -->


            <!-- Navbar start -->
            <div class="container-fluid fixed-top px-0" >
              <div class="container px-0">
                
                <nav class="navbar navbar-light bg-light navbar-expand-xl">

                  <a href="index.html" class="navbar-brand ms-3">
                    <h1 class="text-primary display-5">Moda Urbana</h1>
                  </a>
                  <button class="navbar-toggler py-2 px-3 me-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars text-primary"></span>
                  </button>
                  <div class="collapse navbar-collapse bg-light" id="navbarCollapse">
                    <div class="navbar-nav ms-auto">

                      <xsl:for-each select="main-menu/menu-item">
                        <xsl:choose>

                          <xsl:when test="@id = 1">
                            
                                <a href="#{@text}" class="nav-item nav-link active">
                                  <xsl:value-of select="@text"/>
                                </a>
                            
                          </xsl:when>
                          <xsl:otherwise>
                            
                            <a href="#{@text}" class="nav-item nav-link">
                              <xsl:value-of select="@text"/>
                            </a>
                            
                          </xsl:otherwise>

                        </xsl:choose>
                      </xsl:for-each>
                      
                    </div>

                  </div>
                  
                </nav>
                
              </div>
            </div>
            <!-- Navbar End -->


            <!-- Carousel Start -->
            <div class="container-fluid carousel-header vh-100 px-0" id="Home">
              <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
               
                <ol class="carousel-indicators">
                  <li data-bs-target="#carouselId" data-bs-slide-to="0" class="active"></li>
                  <li data-bs-target="#carouselId" data-bs-slide-to="1"></li>
                  <li data-bs-target="#carouselId" data-bs-slide-to="2"></li>
                </ol>
                
                <div class="carousel-inner" role="listbox">

                  <xsl:for-each select ="main-section/category[@name ='accessories']/item">

                    <xsl:choose>

                      <xsl:when test="@id = 1">

                        <div class="carousel-item active">

                          <img src="{image}" class="img-fluid" alt="{image}"></img>
                          <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                              <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;">
                                <xsl:value-of select="description"/>
                              </h4>
                              <h1 class="display-1 text-capitalize text-white mb-4">
                                <xsl:value-of select="price"/>
                              </h1>
                              <p class="mb-5 fs-5">
                                <xsl:value-of select="description"/>
                              </p>
                              <div class="d-flex align-items-center justify-content-center">
                                <a class="btn-hover-bg btn btn-primary text-white py-3 px-5" href="">Ver</a>
                              </div>
                            </div>
                          </div>

                        </div>

                      </xsl:when>
                      <xsl:otherwise>

                        <div class="carousel-item">
                          <img src="{image}" class="img-fluid" alt="{image}"></img>
                          <div class="carousel-caption">
                            <div class="p-3" style="max-width: 900px;">
                              <h4 class="text-white text-uppercase fw-bold mb-4" style="letter-spacing: 3px;">
                                <xsl:value-of select="@name"/>
                              </h4>
                              <h1 class="display-1 text-capitalize text-white mb-4">
                                <xsl:value-of select="price"/>
                              </h1>
                              <p class="mb-5 fs-5">
                                <xsl:value-of select="description"/>
                              </p>
                              <div class="d-flex align-items-center justify-content-center">
                                <a class="btn-hover-bg btn btn-primary text-white py-3 px-5" href="">See</a>
                              </div>
                            </div>
                          </div>
                        </div>

                      </xsl:otherwise>
                    </xsl:choose>
                    
                    
                  </xsl:for-each>
          
                </div>
                
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
                
              </div>
            </div>
            <!-- Carousel End -->

            <!-- Ofertas sección -->
            <div class="container-fluid service py-5 bg-light">
            <div class="container py-5">

                <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h5 class="text-uppercase text-primary" id="Ofertas">Ofertas</h5>
                    <h1 class="mb-0"></h1>
                </div>

                <div class="row g-4">

                    <xsl:for-each select="main-section/category[@name = 't-shirt']/item">

                        <div class="col-md-6 col-lg-6 col-xl-3">

                          <div class="service-item">

                            <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                              <div class="service-link">
                                  <a href="" class="h4 mb-0">Buy</a>
                              </div>

                          </div>
                          <p class="my-4">
                            <xsl:value-of select="@name"/>
                          </p>

                      </div>

                    </xsl:for-each>
                    
                    <div class="col-12">
                        <div class="d-flex align-items-center justify-content-center">
                            <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Read More</a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
            <!-- Services End -->
          
            <!-- Women section -->
            <section id="Mujeres">

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Mujeres</h3>
                    <h5 class="mb-0">T-shirt</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 't-shirt']/item[@by = 'women']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Mujeres</h3>
                    <h5 class="mb-0">Hoodie</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'hoodie']/item[@by = 'women']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Mujeres</h3>
                    <h5 class="mb-0">Jeans</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'jeans']/item[@by = 'women']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            </section>
            <!-- Women End -->

            <!-- Men section -->
            <section id="Hombres">

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Hombres</h3>
                    <h5 class="mb-0">T-shirt</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 't-shirt']/item[@by = 'men']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Hombres</h3>
                    <h5 class="mb-0">Hoodie</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'hoodie']/item[@by = 'men']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Hombres</h3>
                    <h5 class="mb-0">Jeans</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'jeans']/item[@by = 'men']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            </section>
            <!-- Men End -->

             <!-- Kids section -->
            <section id="Kids">

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Kids</h3>
                    <h5 class="mb-0">T-shirt</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 't-shirt']/item[@by = 'kids']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

              <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Kids</h3>
                    <h5 class="mb-0">Hoodie</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'hoodie']/item[@by = 'kids']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            <div class="container-fluid donation py-5">
                <div class="container py-5">

                  <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                    <h3 class="text-uppercase text-primary">Kids</h3>
                    <h5 class="mb-0">Jeans</h5>
                  </div>

                    <div class="row g-4">

                         <xsl:for-each select="main-section/category[@name = 'jeans']/item[@by = 'kids']">

                          <div class="col-lg-4">
            
                                <div class="donation-item">
                                  <img src="{image}" class="img-fluid w-100" alt="Image"></img>
                                  <div class="donation-content d-flex flex-column">
                                    <h5 class="text-uppercase text-primary mb-4">
                                      <xsl:value-of select="@name"/>
                                    </h5>
                                    <a href="#" class="btn-hover-color display-6 text-white"></a>
                                    <h4 class="text-white mb-4">
                                      <xsl:value-of select="price"/>
                                    </h4>
                                    <p class="text-white mb-4">
                                      <xsl:value-of select="description"/>
                                    </p>

                                    <div class="donation-btn d-flex align-items-center justify-content-start">
                                      <a class="btn-hover-bg btn btn-primary text-white py-2 px-4" href="">Buy</a>
                                    </div>

                                  </div>
                                </div>

                              </div>

                        </xsl:for-each>

                    </div>

                </div>
              </div>

            </section>
            <!-- Kids End -->

            
            <!-- Nuestra tienda -->
            <section id="Nuestra tienda">

              <br></br>
              <br></br>

              <div class="text-center mx-auto pb-5" style="max-width: 800px;">
                <h3 class="text-uppercase text-primary">Now</h3>
                <h5 class="mb-0">Best sales</h5>
              </div>
              
              <div id="audio" style="width:100%;">
                
                <img src="img/posters/black-sale.png" width="100%" height="100%"></img>
                
                <audio controls="true" style="width:100%;" autoplay="autoplay">
                  <source src="files/audio/BohemianGarden.mp3"></source>
                </audio>
                
              </div>

              <div id="video" style="width:100%;">
                
                <video controls="true" style="width:100%" poster="assets/img/gallery/gallery-2.jpg">
                  <source src="files/video/tourClothesShop.mp4"></source>
                </video>
                
              </div>
              
              <br></br>
              <br></br>
              
            </section>
            <!-- End nuestra tienda -->
            
            
            <!-- Contacto -->
            <section id="Contacto">

         <!-- Contact Start -->
        <div class="container-fluid bg-light py-5">
            <div class="container py-5">
                <div class="contact p-5">
                    <div class="row g-4">
                        <div class="col-xl-5">
                            <h1 class="mb-4">Get in touch</h1>
                            <p class="mb-4">
                              <![CDATA[The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. ]]><a class="text-dark fw-bold" href="https://htmlcodex.com/contact-form">Download Now</a>.</p>
                            <form>
                                <div class="row gx-4 gy-3">
                                    <div class="col-xl-6">
                                      <input id="nameInput" type="text" class="form-control bg-white border-0 py-3 px-4" placeholder="Your First Name"></input>
                                    </div>
                                    <div class="col-xl-6">
                                      <input  id="emailInput" type="email" class="form-control bg-white border-0 py-3 px-4" placeholder="Your Email"></input>
                                    </div>
                                    <div class="col-xl-6">
                                      <input id="telephoneInput" type="text" class="form-control bg-white border-0 py-3 px-4" placeholder="Your Phone"></input>
                                    </div>
                                    <div class="col-xl-6">
                                      <input  id="subjectInput" type="text" class="form-control bg-white border-0 py-3 px-4" placeholder="Subject"></input>
                                    </div>
                                    <div class="col-12">
                                        <textarea id="messageInput" class="form-control bg-white border-0 py-3 px-4" rows="7" cols="10" placeholder="Your Message"></textarea>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn-hover-bg btn btn-primary w-100 py-3 px-5" type="submit">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                      
                        <div class="col-xl-7">
                            <div>
                                <div class="row g-4">
                                    <div class="col-lg-4">
                                        <div class="bg-white p-4">
                                            <i class="fas fa-map-marker-alt fa-2x text-primary mb-2"></i>
                                            <h4>Address</h4>
                                            <p class="mb-0">
                                                <xsl:value-of select="branch-info/place/."/>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="bg-white p-4">
                                            <i class="fas fa-envelope fa-2x text-primary mb-2"></i>
                                            <h4>Mail Us</h4>
                                            <p class="mb-0">
                                                <xsl:value-of select="branch-info/email/."/>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <div class="bg-white p-4">
                                            <i class="fa fa-phone-alt fa-2x text-primary mb-2"></i>
                                            <h4>Telephone</h4>
                                            <p class="mb-0">
                                              <xsl:value-of select="branch-info/telephone/."/>
                                            </p>
                                        </div>
                                    </div>



                                  <div data-aos="fade-up">
                                    <style>
                                      #map{
                                      border: 0;
                                      width: 100%;
                                      height: 350px;
                                      }
                                    </style>
                                    <div id="google-map">
                                      <div id="map"></div>
                                    </div>
                                    <text id="direction"></text>
                                    <div class="col-lg-12 margin-bottom-30" id="street" style="height: 400px; width: 100%;"></div>
                                  </div>
                                  
                                  <!--
                                    <div class="col-lg-12" id="map">
                                      
                                        <iframe class="w-100" style="height: 412px; margin-bottom: -6px;" src=""  loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                    
                                    </div>
                                  -->
                                  
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->

        </section>
            <!-- Contacto End -->


            <div class="text-center mx-auto pb-5" style="max-width: 800px;">
              <h3 class="text-uppercase text-primary">Mini juego</h3>
              <h5 class="mb-0">Puzzle</h5>
            </div>

            <!-- Mini juego section -->
            <section id="Mini juego">


              <button id="resetBut">Reset</button>

              <header id="headLine">
                
                <p>solve the puzzle</p>
                
              </header>

              <section id="game-boards">
                
                <!-- these are the draggable pieces -->
                <div class="puzzle-pieces">
                  
                  <img id="img-br" src="img/puzzle/big_sale_bottom_right.jpg" class="puzzle-image" alt="bottom right"></img>
                  <img id="img-tl" src="img/puzzle/big_sale_top_left.jpg" class="puzzle-image" alt="top left"></img>
                  <img id="img-bl" src="img/puzzle/big_sale_bottom_left.jpg" class="puzzle-image" alt="bottom left"></img>
                  <img id="img-tr" src="img/puzzle/big_sale_top_right.jpg" class="puzzle-image" alt="top right"></img>

                </div>
                
                <!-- these are the drop zones -->
                <div class="puzzle-board">
                  
                  <div class="drop-zone tl" id="dz-tl"></div>
                  <div class="drop-zone tr" id="dz-tr"></div>
                  <div class="drop-zone bl" id="dz-bl"></div>
                  <div class="drop-zone br" id="dz-br"></div>
                  
                </div>
                
              </section>

            </section>
            <!-- End mini juego section -->

            
            <!-- Footer Start -->
            <div class="container-fluid footer bg-dark text-body py-5">
              <div class="container py-5">
                <div class="row g-5">
                  
                  <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                      <h4 class="mb-4 text-white">Newsletter</h4>
                      <p class="mb-4">Dolor amet sit justo amet elitr clita ipsum elitr est.Lorem ipsum dolor sit amet, consectetur adipiscing elit consectetur adipiscing elit.</p>
                      <div class="position-relative mx-auto">
                        <input class="form-control border-0 bg-secondary w-100 py-3 ps-4 pe-5" type="text" placeholder="Enter your email"></input>
                          <button type="button" class="btn-hover-bg btn btn-primary position-absolute top-0 end-0 py-2 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                  </div>
                  
                  <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item d-flex flex-column">
                      <h4 class="mb-4 text-white">Our Services</h4>
                      
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Ocean Turtle
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> White Tiger
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Social Ecology
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Loneliness
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Beauty of Life
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Present for You
                      </a>
                      
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item d-flex flex-column">
                      <h4 class="mb-4 text-white">Volunteer</h4>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Karen Dawson
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Jack Simmons
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Michael Linden
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Simon Green
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Natalie Channing
                      </a>
                      <a href="">
                        <i class="fas fa-angle-right me-2"></i> Caroline Gerwig
                      </a>
                    </div>
                  </div>
                  <div class="col-md-6 col-lg-6 col-xl-3">
                    <div class="footer-item">
                      <h4 class="mb-4 text-white">Our Gallery</h4>
                      <div class="row g-2">
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-1.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-1.jpg" data-lightbox="footerGallery-1" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-2.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-2.jpg" data-lightbox="footerGallery-2" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-3.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-3.jpg" data-lightbox="footerGallery-3" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-4.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-4.jpg" data-lightbox="footerGallery-4" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-5.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-5.jpg" data-lightbox="footerGallery-5" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                        <div class="col-4">
                          <div class="footer-gallery">
                            <img src="img/gallery-footer-6.jpg" class="img-fluid w-100" alt=""></img>
                              <div class="footer-search-icon">
                                <a href="img/gallery-footer-6.jpg" data-lightbox="footerGallery-6" class="my-auto">
                                  <i class="fas fa-search-plus text-white"></i>
                                </a>
                              </div>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Footer End -->


            <!-- Copyright Start -->
            <div class="container-fluid copyright py-4">
              <div class="container">
                <div class="row g-4 align-items-center">
                  <div class="col-md-4 text-center text-md-start mb-md-0">
                    <span class="text-body">
                      <a href="#">
                        <i class="fas fa-copyright text-light me-2"></i>Your Site Name
                      </a>, All right reserved.
                    </span>
                  </div>
                  <div class="col-md-4 text-center">
                    <div class="d-flex align-items-center justify-content-center">
                      <a href="#" class="btn-hover-color btn-square text-white me-2">
                        <i class="fab fa-facebook-f"></i>
                      </a>
                      <a href="#" class="btn-hover-color btn-square text-white me-2">
                        <i class="fab fa-twitter"></i>
                      </a>
                      <a href="#" class="btn-hover-color btn-square text-white me-2">
                        <i class="fab fa-instagram"></i>
                      </a>
                      <a href="#" class="btn-hover-color btn-square text-white me-2">
                        <i class="fab fa-pinterest"></i>
                      </a>
                      <a href="#" class="btn-hover-color btn-square text-white me-0">
                        <i class="fab fa-linkedin-in"></i>
                      </a>
                    </div>
                  </div>
                  <div class="col-md-4 text-center text-md-end text-body">
                    <!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
                    <!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
                    <!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
                    Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a> Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
                  </div>
                </div>
              </div>
            </div>
            <!-- Copyright End -->


            <!-- Back to Top -->
            <a href="#" class="btn btn-primary btn-primary-outline-0 btn-md-square back-to-top">
              <i class="fa fa-arrow-up"></i>
            </a>


            <!-- JavaScript Libraries -->
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/waypoints/waypoints.min.js"></script>
            <script src="lib/counterup/counterup.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/lightbox/js/lightbox.min.js"></script>


            <!-- Template Javascript -->
            <script src="js/main.js"></script>
            <script src="js/GetMessage.js"></script>
            <script type="text/javascript" src="js/MyConnectionAPIGoogle.js"></script>
           
            <!-- Minijuego script -->
            <script src="js/puzzle.js"></script>
            <!-- End minijuego script -->


            <script src="js/showMessage.js"></script>


          </body>

        </html>
      
     
      </xsl:template>



</xsl:stylesheet>
