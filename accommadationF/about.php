<?php  

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="icon"type="image/png"href="images/favicon.png">
   <title>About Us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">


   <link rel="stylesheet" href="css/abo.css">
   <link rel="stylesheet" href="css/style.css">


</head>
<body>
   
<?php include 'components/user_header.php'; ?>


<section class="about">

   <div class="row">
      <div class="image">
         <img src="images/whyus.jpg" alt="">
      </div>
      <div class="content">
         <h3>why us?</h3>
         <p>Say goodbye to stressful house hunting and hello to hassle-free living. Our website offers a curated selection of student-friendly accommodations near NSBM, complete with essential amenities and budget-friendly options. With easy search filters, secure bookings, and a supportive community, finding your ideal home away from home has never been this convenient</p>
         <a href="contact.php" class="inline-btn">contact us</a>
      </div>
   </div>

</section>

<section class="steps">

   

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>search property</h3>
      </div>

      <div class="box">
         <img src="images/add.png" alt="">
         <h3>add reservation</h3>
      </div>

      <div class="box">
         <img src="images/enjoy.png" alt="">
         <h3>enjoy property</h3>
      </div>

   </div>

</section>


<section class="reviews">

   <h1 class="heading"> Reviews</h1>

   <div class="box-container">

      <div class="box">
         <div class="user">
            <img src="images/randiv.jpg" alt="">
            <div>
               <h3>Himeth</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/savinu.jpg" alt="">
            <div>
               <h3>Savinu</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
         
      </div>

      <div class="box">
         <div class="user">
            <img src="images/sihan.jpg" alt="">
            <div>
               <h3>Sihan</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
         
      </div>

      <div class="box">
         <div class="user">
            <img src="images/vishwa.jpg" alt="">
            <div>
               <h3>Vishwa</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
         
      </div>

      <div class="box">
         <div class="user">
            <img src="images/kithul.jpg" alt="">
            <div>
               <h3>Sashintha</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
      </div>

      <div class="box">
         <div class="user">
            <img src="images/ashan.jpg" alt="">
            <div>
               <h3>Ashan</h3>
               <div class="stars">
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star-half-alt"></i>
               </div>
            </div>
         </div>
         <p>recommended</p>
         
      </div>

   </div>

</section>



<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>