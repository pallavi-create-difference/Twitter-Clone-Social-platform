<html>
<body>
     User is trying to log in at-
    <br>
     <br>
     <div id="time">
     </div>
     <br>
     <br>
     <div>
     <marquee>
     This is created by Pallavi Gupta
     </marquee>
     </div>

     <script type="text/javascript">
     function updateTime(){
     document.getElementById("time").innerText= new Date().toString();
     }
     setInterval(updateTime,1000);
     </script>



</body>
</html>