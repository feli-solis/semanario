<?php

/**
 * @author Edgar azael deanza González & Luis Felipe Solis Enriquez
 * @copyright 2014
 */	
//error_reporting(E_ALL^ E_WARNING);  

class connection
{
	var $host='localhost';			//server name
	var $userName='root';			//user name on the server
	var $password='';				//password to acces the server
	protected $database='semanauniversitaria';	//database name
	protected $connection='';		//saved connection


	function serverConnection(){	//server connection
		$this->connection = mysql_connect($this->host,$this->userName,$this->password);
		if(!$this->connection){
			echo 'Error server connection';
		}
		return $this->connection;
	}

	function databaseConnection(){ //database connection
		$db=mysql_select_db($this->database,$this->connection);
		if(!$db){
			echo 'Error database connection';
		}
	}

	function closeConnection() // close the connection
    {
        mysql_close($this->connection);
    }
}

class event{
	function query($query){
		$connection=new connection;
		$connection->serverConnection();
		$connection->databaseConnection();
		return mysql_query($query);
		$connection->closeConnection();
	}

}


$evento=new event;
$consulta=$evento->query('select hora,evento,ponente from programa');

while($fila=mysql_fetch_array($consulta)){
	echo '<p>Hora: '.$fila['hora'].'<br>';
	echo 'Evento: '.$fila['evento']. ' '. $fila['ponente'] .'</p>';
}
mysql_free_result($consulta);
?>
