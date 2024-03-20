<html lang="en">
<style>
body{
    line-height:1.5;
    font-family: 'Poppins', sans-serif;
}
*{
    margin:0;
    padding:0;
    box-sizing:border-box
}
.container{
    max-width:1170px;
    margin:auto;
}
.row{
    display:flex;
    flex-wrap:wrap;
}
ul{
    list-style:none;
}
.footer{
    background-color:#24262b;
    padding:50px 0;
}
.footer-col{
    width: 25%;
    padding:0 15px;
    
}
.footer-col h4{
    font-size:18px;
    color: white;
    text-transform:capitalize;
    margin-bottom:35px;
    font-weight:500;
    position:relative;
    
}
.footer-col h4::before{
    content: '';
    position:absolute;
    left:0;
    bottom: -10px;
    background-color: red;
    height:2px;
    box-sizing: border-box;
    width:50px;
}
.footer-col ul li:not(:last-child){
    margin-bottom:10px;
    
}
.footer-col ul li a{
    font-size:16px;
    text-transform: capitalize;
    color:#ffffff;
    text-decoration: none;
    font-weight:300;
    color: #bbbbbb;
    display:block;
    transition:all 0.3s ease;
    
}
.footer-col ul li a:hover{
    color:#ffffff;
    padding-left:8px;
}
.footer-col .social-links a{
    display: inline-block;
    height:40px;
    width:40px;
    background-color:rgba(255,255,255,0.2);
    margin:0 10px 10px 0;
    text-align: center;
    line-height: 40px;
    border-radius: 50%;
    color:#ffffff;
    transition: all 0.5s ease;   
}

.footer-col .social-links a:hover{
    color:#24262b;
    background-color: #ffffff; 
}

/*@media(max-width: 767px){
    .footer-col{
        width:25%;
        padding: 0 30px;
    }  
}
@media(max-width: 574px){
    .footer-col{
        width:100%;
    }  
}
@media(max-width: 767px){
    .footer-col{
        width:25%;
        padding: 0 30px;
    }  
}*/
</style>
<!DOCTYPE html>
    <head>
        <title>Footer Design</title> 
        <meta charset="utf-8"><!-- comment -->
        <meta name="viewport" content="width=device-width", intial-scale="1"><!-- comment -->       
    </head>
    <body>
        
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>company</h4>
                        <ul>
                            <li><a href="footer/aboutus.jsp">about us</a></li>
                            <li><a href="footer/our_service.jsp">our services</a></li><!-- comment -->
                            <li><a href="footer/privacy_policy.jsp">privacy policy</a></li><!-- comment -->
                            <li><a href="">affiliate program</a></li>
                        </ul>    
                    </div>
                    
                    <div class="footer-col">
                        <h4>get help</h4>
                        <ul>
                            <li><a href="footer/faq.jsp">FAQ</a></li>
                            <li><a href="">shipping</a></li><!-- comment -->
                            <li><a href="">returns</a></li><!-- comment -->
                            <li><a href="">order status</a></li><!-- comment -->
                            <li><a href="">payment options</a></li>
                        </ul>    
                    </div>
                    
                    <div class="footer-col">
                        <h4>online shop</h4>
                        <ul>
                            <li><a href="all_phone.jsp">smart phones</a></li>
                            <li><a href="all_laptop.jsp">laptops</a></li><!-- comment -->
                            <li><a href="all_watch.jsp">watches</a></li><!-- comment -->
                        </ul>    
                    </div>
                    
                   <div class="footer-col">
                        <h4>follow us</h4>
                        <div class="social-links">
                            <a href="https://www.facebook.com/"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="https://www.twitter.com/"><i class="fa-brands fa-twitter"></i></a><!-- comment -->
                            <a href="https://www.instagram.com/"><i class="fa-brands fa-square-instagram"></i></a><!-- comment -->
                            <a href="https://www.linkedin.com/"><i class="fa-brands fa-linkedin"></i></a>
                        </div>    
                    </div>
                    
                    
                    
                </div>
            </div>
        </footer>
    </body>
</html>