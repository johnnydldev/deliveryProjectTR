<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
  <xsl:output method="html" indent="yes"/>

  <!-- template index-->
  <xsl:template match="main">

    <html>
      
      <!-- Head section -->
      <head>
        
        <link href="assets/css/styles.css" rel="stylesheet"></link>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"></link>
        
      </head>
      <!-- End Head section -->

      <!-- Body section -->
      <body>

        <!-- main section -->
        <main>

          <!-- End nav section -->
          <nav id="main-menu">

            <!-- ul section main menu -->
            <ul>
              <xsl:for-each select="main-menu/menu-item">
                <li class="option-main-menu">
                  <a class="item-menu-link" href="#{@text}">
                    <xsl:value-of select="@text"/>
                  </a>
                </li>
              </xsl:for-each>
            </ul>
            <!-- End ul section main menu -->

          </nav>
          <!-- End nav section -->

          <h2>Mujeres</h2>
          <!-- women section -->
          <section class="show-square-items bg-dark-subtle dark-section" id="section-women">
            
            <!-- test carousel -->

            <div id="carouselExample" class="carousel slide">

              <div class="carousel-inner">

                <xsl:for-each select="main-section/category[@name='t-shirt']/item">

                  <xsl:choose>
                    <xsl:when test="@id = 1">

                      <div class="carousel-item active" data-bs-interval="10000">

                        <!-- Card section -->
                        <div class="card" style="width: 18rem;">
                          <img src="{image}" class="card-img-top" alt="..."></img>
                          <div class="card-body">
                            <h5 class="card-title">
                              <xsl:value-of select="price"/>
                            </h5>
                            <p class="card-text">
                              <xsl:value-of select="description"/>
                            </p>
                            <a href="#" class="btn btn-primary">Go somewhere</a>
                          </div>
                        </div>
                        <!-- End card section -->

                      </div>

                    </xsl:when>
                    <xsl:otherwise>

                      <div class="carousel-item ">

                        <div class="d-block w-100 item" data-bs-interval="2000">

                          <!-- Card section -->
                          <div class="card" style="width: 18rem;">
                            <img src="{image}" class="card-img-top" alt="..."></img>
                            <div class="card-body">
                              <h5 class="card-title">
                                <xsl:value-of select="price"/>
                              </h5>
                              <p class="card-text">
                                <xsl:value-of select="description"/>
                              </p>
                              <a href="#" class="btn btn-primary">Go somewhere</a>
                            </div>
                          </div>
                          <!-- End card section -->

                        </div>

                      </div>


                    </xsl:otherwise>
                  </xsl:choose>


                </xsl:for-each>


              </div>


            </div>

            <!-- End test carousel -->

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>


          </section>
          <!-- End women section -->

          <!-- men section -->
          <section id="men">
            
          </section>
          <!-- End men section -->

          <!-- new kids section -->
          <section id="kids">

          </section>
          <!-- End kids section -->

        </main>
        <!-- main section -->


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
      </body>
      <!-- End body section -->

    </html>
    <!-- End html section -->

  </xsl:template>
  <!-- End template index -->

</xsl:stylesheet>
