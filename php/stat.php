<?php
ini_set('date.timezone','Asia/Shanghai');
header("Content-Type: text/html;charset=utf-8");
include('conn.php');

//接收统计的起止日期
$sdate="2016-1-1";
$edate="2016-2-3";
//查询dutys表中


// $sql="select * from users,dutys where `users`.`classid`=`dutys`.`classid` and date >= '$sdate' and date <= '$edate';";
// $query=mysqli_query($con,$sql);
// $array=mysqli_fetch_array($query);


// var_dump($array);
	echo "<table border=2>";
	echo "<tr>";
	echo "<td>姓名</td>";
	echo "<td>值班总次数</td>";
	echo "<td>未签退</td>";
	echo "<td>按要求在岗</td>";
	echo "<td>额外值班次数</td>";
	echo "<td>缺勤时间</td>";
	echo "</tr>";
	$user_query=mysqli_query($con,"select * from users;");
while($user_array=mysqli_fetch_array($user_query))
{
		$classid=$user_array['classid'];
		$sql="select *,count(*) from dutys where `classid`='$classid' and date >= '$sdate' and date <= '$edate';";
		$query=mysqli_query($con,$sql);
		$array=mysqli_fetch_array($query);
		// var_dump($array);
	echo "<tr>";
	echo "<td>".$user_array['name']."</td>";//姓名
	echo "<td>".$array['count(*)']."</td>";//签到总次数
		$over_sql="select count(*) from dutys where `classid`='$classid' and date >= '$sdate' and date <= '$edate' and over=0;";
		$over_query=mysqli_query($con,$over_sql);
		$over_array=mysqli_fetch_array($over_query);
	echo "<td>".$over_array['count(*)']."</td>";//未签退
	// $classid=$array['classid'];
	// $num_sql="select count(*) from dutys where `dutys`.`classid`='$classid' and date >= '$sdate' and date <= '$edate';";
	// $num_query=mysqli_query($con,$num_sql) or die("1");
	// $num_array=mysqli_fetch_array($num_query);

	$zaigang_sql="select count(*) from user_dutys,($sql) as zaigang where `zaigang`.`over`=0 and `user_dutys`.`onweek`=`zaigang`.`week` and `user_dutys`.`ontime`=`zaigang`.`ontime`";
	// $zaigang_sql="select count(*) from user_dutys,dutys where `user_dutys`.`classid`='$classid' and `user_dutys`.`onweek`=`dutys`.`week` and `user_dutys`.`ontime`=`dutys`.`ontime` and `dutys`.`over`='1';";
	$zaigang_query=mysqli_query($con,$sql);
	$zaigang=mysqli_fetch_array($zaigang_query);
	var_dump($zaigang);
	echo "<td>".$zaigang["count(*)"]."</td>";
	echo "<td>".$user_array['name']."</td>";
	echo "<td>".$user_array['name']."</td>";
	echo "</tr>";
	
}
	echo "</table>";

	
