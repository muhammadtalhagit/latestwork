<?php
include('includes/navbar1.php');
include('includes/config.php');

if(isset($_POST['Login'])){
    $user_email = $_POST['Login_email'];
    $user_pass = $_POST['Login_pass'];
  
  
  
    $login_query = "SELECT * from `user-register` where email = '$user_email' ";
    $get_from_db = mysqli_query($connection, $login_query); 
    if(mysqli_num_rows($get_from_db) > 0){
      $row = mysqli_fetch_assoc($get_from_db);
      $db_pass = $row['password'];
      $pass_decode = password_verify($user_pass, $db_pass);
      $_SESSION["useremail"] = $row['email'];
      echo '<script> window.location.href="index.php" </script>';
    }else{
      echo "<script> alert('Invalid Username/password'); </script>";
  
    }
  
             
  }
?>
      <!-- inner page section -->
      <section class="inner_page_head">
         <div class="container_fuild">
            <div class="row">
               <div class="col-md-12">
                  <div class="full">
                     <h3>Login</h3>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end inner page section -->
      <!-- why section -->
      <section class="why_section layout_padding">
         <div class="container">
         
            <div class="row">
               <div class="col-lg-8 offset-lg-2">
                  <div class="full">
                  <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="POST" class="billing-form ftco-bg-dark p-3 p-md-5">
	          	<div class="row align-items-end">
	          		<div class="col-md-12">
	                <div class="form-group">
	                	<label for="Email">Email</label>
	                  <input type="text" name="Login_email" class="form-control" placeholder="Email">
	                </div>
	              </div>
                 
	              <div class="col-md-12">
	                <div class="form-group">
	                	<label for="Password">Password</label>
	                    <input type="password" name="Login_pass" class="form-control" placeholder="Password">
	                </div>

                </div>
                <div class="col-md-12">
                	<div class="form-group mt-4">
							<div class="radio">
                                <button name="Login" class="btn btn-danger py-3 px-4">Login</button>
						    </div>
					</div>
                </div>

               
	          </form><!-- END -->
                     <!-- <form action="index.html">
                        <fieldset>
                           <input type="text" placeholder="Enter your full name" name="name" required />
                           <input type="email" placeholder="Enter your email address" name="email" required />
                           <input type="text" placeholder="Enter subject" name="subject" required />
                           <textarea placeholder="Enter your message" required></textarea>
                           <input type="submit" value="Submit" />
                        </fieldset>
                     </form> -->
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end why section -->
      <!-- arrival section -->
      <section class="arrival_section">
         <div class="container">
            <div class="box">
               <div class="arrival_bg_box">
                  <img src="images/arrival-bg.png" alt="">
               </div>
               <div class="row">
                  <div class="col-md-6 ml-auto">
                     <div class="heading_container remove_line_bt">
                        <h2>
                           #NewArrivals
                        </h2>
                     </div>
                     <p style="margin-top: 20px;margin-bottom: 30px;">
                        Vitae fugiat laboriosam officia perferendis provident aliquid voluptatibus dolorem, fugit ullam sit earum id eaque nisi hic? Tenetur commodi, nisi rem vel, ea eaque ab ipsa, autem similique ex unde!
                     </p>
                     <a href="">
                     Shop Now
                     </a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- end arrival section -->
      <?php
     include('includes/footer.php')
     ?>