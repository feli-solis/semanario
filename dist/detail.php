<?php
include "/php/class.php";
$evento=new event;
$day=$_GET['day'];
$clave=$_GET['clave'];
if ($day==NULL){
  $day=date('d');
}
$consulta=$evento->query('select imagen from programa where id="'.$clave.'" order by id asc');
?>
<!DOCTYPE html>
<html lang="">
  <head>
    <title>Title Page</title>
    <meta charset="UTF-8">
    <meta name=description content="">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/app.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
    <div class="container">

      <div class="row">
      <div class="panel panel-primary">
        <div class="panel-heading"><h4 class="text-center">Semana Universitaria</h4></div>
        <div class="panel-body" id="<?php echo $day; ?>">
        
        <ul class="nav nav-justified nav-pills">
          <li class="active"><a href="#">
            <span class="fa-stack">
              <i class="fa fa-calendar-o fa-stack-2x"></i>
              <span class="fa fa-stack-1x">19</span>
            </span>
          </a></li>
          <li><a href="#">20</a></li>
          <li><a href="#">21</a></li>
          <li><a href="#">22</a></li>
          <li><a href="#">23</a></li>
        </ul>
        
        <div class="panel panel-info">
          <div class="panel-heading"><h2 class="text-center"><i class="fa fa-calendar-o fa-lg"></i>19</h2></div>
          <div class="panel-body">
                <?php
                while($fila=mysql_fetch_array($consulta)){
                  echo "<img src=../maps/".$fila['imagen']." class='img-responsive'>";
                }
                mysql_free_result($consulta);
                ?>
          </div>
        </div>

      </div>  
      </div>

    </div><!-- row -->
    </div><!-- container -->
    
    <script src="js/app.min.js"></script>
  </body>
</html>