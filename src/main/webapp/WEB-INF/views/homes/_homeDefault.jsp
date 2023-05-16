<%@page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
</head>
<body>
	<jsp:include page="../_header.jsp"></jsp:include>
	<section id="about" class="about" style="margin-top:50px">
      <div class="container" data-aos="fade-up">

        <div class="section-title" style="text-align:center">
          <h1>About Us</h1></div>
         
           <br>

        <div class="row">
          <div class="col-lg-6" data-aos="fade-right">
        
             <img src='<c:url value="http://localhost.8080/src//img/about.jpg" class="img-fluid"></c:url>' /> 
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 content" data-aos="fade-left">
            <h3>Our vision</h3>
            <p class="fst-italic">
              Be the most trusted healthcare partner, enabling healthier lives. And to build a community in which all people achieve their full potential for health and well-being across the lifespan.  We work to be trusted by patients, a valued partner in the community, and creators of positive change.
            </p>
            <h3> Our Mission </h3>
            <p class="fst-italic">
             
              To be the undisputed market leader by providing accessible, affordable, timely and quality healthcare diagnostics, applying insights and cutting edge technology to create value for all stakeholders.
            </p>
            <h3>Our Pledge</h3>
            <p class="fst-italic">
              We believe life deserves to be cherished
              Every moment filled with joy
              Every step well-lived.

We believe life, when interrupted by ill health, deserves only the best quality of care
Every man, woman, and child treated with compassion
Every illness managed with uncompromising dedication

We are Sir H. N. Reliance Foundation Hospital and Research Centre
And we believe every life deserves respect
            </p>
            
          </div>
        </div>

      </div>
    </section>
    
    <section id="contact" class="contact section-bg" style="text-align:center" >
      <div class="container" style="margin-top:50px;">

        <div class="section-title">
          <h2>Contact Us</h2>
        </div>

        <div class="row justify-content-center" style="margin-top:50px;">

        

          <div class="col-lg-5 col-md-7">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>
              </div>
              <div class="form-group mt-3">
                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
              </div>
              <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div>
              <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div>
              <div class="text-center"><button type="submit">Send Message</button></div>
            </form>
          </div>

        </div>

      </div>
    </section>
	<jsp:include page="../_footer.jsp"></jsp:include>
</body>
</html>
