<?php
include "/php/class.php";
$evento=new event;
$day=$_GET['day'];
if ($day==NULL){
  $day=date('d');
}
$consulta=$evento->query('select hora,evento,ponente from programa where fecha="2014-05-'.$day.'" order by id asc');
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
            <table class="table table-condensed table-striped">
              <thead>
                <tr>
                  <th>Hora</th>
                  <th>Evento</th>
                </tr>
              </thead>
              <tbody>
                <?php
                while($fila=mysql_fetch_array($consulta)){
                  echo '<tr><td>'.$fila['hora'].'</td>';
                  echo '<td>'.$fila['evento']. ' '. $fila['ponente'] .'</td></tr>';
                }
                mysql_free_result($consulta);
                ?>
              </tbody>
            </table>
          </div>
        </div>

      </div>  
      </div>

    </div><!-- row -->
    </div><!-- container -->
    
    <script src="js/app.min.js"></script>
  </body>
</html>