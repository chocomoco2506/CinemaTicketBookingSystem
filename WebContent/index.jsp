<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Responsive Movie Website</title>
    <link href="images/favicon.ico" rel="icon" type="image/x-icon" />
    <link rel="stylesheet" href="styles.css" />
    <link
      href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,300;1,400;1,700;1,900&family=Roboto:wght@300;400;500;700;900&family=Sen:wght@400;700;800&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/7433d3320f.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <!-- Navbar Section -->
    <div class="navbar">
      <div class="navbar-container">
        <div class="logo-container">
          <img src="images/logo.png" class="logo" />
        </div>
        <div class="menu-container">
          <ul class="menu-list">
            <li class="menu-list-item active"><a  href="home.jsp">Home</a></li>
            <li class="menu-list-item"><a href="Movielist.jsp">Movies List</a></li>
            <li class="menu-list-item"><a  href="index.jsp">Contact Us</a></li>
            <li class="menu-list-item"><a  href="index.jsp">Review</a></li>
            <li class="menu-list-item"><a  href="index.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="profile-container">
          <img src="images/profile.png" class="profile-picture" />
          <div class="profile-text-container">
            <span class="profile-text">Light Mode</span>
            <i class="fa-solid fa-caret-down"></i>
          </div>
          <div class="toggle">
            <i class="fa-solid fa-moon toggle-icon"></i>
            <i class="fa-solid fa-lightbulb toggle-icon"></i>
            <div class="toggle-ball"></div>
          </div>
          <div class="profile-text-container">
            <span class="profile-text">Dark Mode</span>
            <i class="fa-solid fa-caret-down"></i>
          </div>
        </div>
      </div>
    </div>

    <!-- Sidebar Section -->
    <div class="sidebar">
      <i class="left-menu-icon fas fa-search"></i>
      <i class="left-menu-icon fas fa-home"></i>
      <i class="left-menu-icon fas fa-users"></i>
      <i class="left-menu-icon fas fa-bookmark"></i>
      <i class="left-menu-icon fas fa-tv"></i>
      <i class="left-menu-icon fas fa-hourglass-start"></i>
      <i class="left-menu-icon fas fa-shopping-cart"></i>
    </div>

    <!-- Banner Section -->
    <div class="container">
      <div class="content-container">
        <div
          class="featured-content"
          style="
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0), #151515),
              url(images/f-1.jpg);
            background-size: cover;
          "
        >
          <h1 class="featured-title"> Cinema Ticket Online Booking System</h1>
          <p class="featured-desc">Watch Anywhere. Cancel Anytime.</p>
        </div>

        <!-- Featured Movie Section  -->
        <div class="movie-list-container">
          <h1 class="movie-list-title">NOW</h1>
          <div class="movie-list-wrapper">
            <div class="movie-list">
              <div class="movie-list-item">
                <img src="images/22.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button"> Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/2.jpeg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button"> Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/3.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button"> Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/4.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button"> Now</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Featured Movie Section  -->
        <div class="movie-list-container">
          <h1 class="movie-list-title">COMMING SOON</h1>
          <div class="movie-list-wrapper">
            <div class="movie-list">
              <div class="movie-list-item">
                <img src="images/5.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button"> Comming Soon</button>
              </div>
              <div class="movie-list-item">
                <img src="images/6.jpg" class="movie-list-item-img" />
                <button class="movie-list-item-button">Comming Soon</button>
              </div>
              <div class="movie-list-item">
                <img src="images/7.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Comming Soon</button>
              </div>
              <div class="movie-list-item">
                <img src="images/8.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Comming Soon</button>
              </div>
            </div>
          </div>
        </div>
        
        <div class="movie-list-container">
          <h1 class="movie-list-title">CONTINUE WATCHING</h1>
          <div class="movie-list-wrapper">
            <div class="movie-list">
              <div class="movie-list-item">
                <img src="images/9.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Watch Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/10.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Watch Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/11.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Watch Now</button>
              </div>
              <div class="movie-list-item">
                <img src="images/12.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Watch Now</button>
              </div>
            </div>
          </div>
        </div>

        <!-- Banner Section  -->
        <div
          class="featured-content"
          style="
            background: linear-gradient(to bottom, rgba(0, 0, 0, 0), #151515),
              url(images/f-2.jpg);
            background-size: cover;
          "
        >
          <h1 class="featured-title">Download your shows to watch offline.</h1>
          <p class="featured-desc">Save your favourites easily to watch.</p>
     
        </div>

        <!-- Featured Movie Section  -->
     	 <div class="movie-list-container">
          <h1 class="movie-list-title">PREVIOUS MOVIE</h1>
          <div class="movie-list-wrapper">
            <div class="movie-list">
              <div class="movie-list-item">
                <img src="images/21.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Precious Watch</button>
              </div>
              <div class="movie-list-item">
                <img src="images/17.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Precious Watch</button>
              </div>
              <div class="movie-list-item">
                <img src="images/13.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Precious Watch</button>
              </div>
              <div class="movie-list-item">
                <img src="images/16.jpg" class="movie-list-item-img" />
                
                <button class="movie-list-item-button">Precious Watch</button>
              </div>
            </div>
          </div>
        </div>
     	
      </div>
    </div>

    <!-- Linked JavaScript File  -->
    <script src="app.js"></script>
  </body>
</html>

<body>

</body>
</html>