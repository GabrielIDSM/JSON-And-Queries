<?php

//Get Jsonq
require_once 'vendor/autoload.php';
use Nahid\JsonQ\Jsonq;

//Get Request.json
$jsonq = new Jsonq('Request.json');

//Hello Message
echo "<br/>===============JSONQ===============<br/><br/>";

//Query 1
echo "<br/>===   QUERY 1:  ->from(reports)->get()  ===<br/><br/>";
$res = $jsonq->from('reports')
    ->get();
echo($res);

//Query 2
echo "<br/><br/>===   QUERY 2 (WHERE):  ->from(reports)->where('params', '=', 0)->get()  ===<br/><br/>";
$jsonq = new Jsonq('Request.json');
$res = $jsonq->from('reports')
    ->where('params', '=', 0)
    ->get();
echo($res);

//Query 3
echo "<br/><br/>===   QUERY 3 (GROUP BY):  ->from('reports.0.dependencies')->groupBy('type')->get()   ===<br/><br/>";
$jsonq = new Jsonq('Request.json');
$res = $jsonq->from('reports.0.dependencies')
    ->groupBy('type')
    ->get();
echo($res);

//Query 4
echo "<br/><br/>===   QUERY 4.1 (AGG FUNCTION):  ->from('reports.0.dependencies')->where('type', '=', 'CommonJS')->count()   ===<br/><br/>";
$jsonq = new Jsonq('Request.json');
$res = $jsonq->from('reports.0.dependencies')
    ->where('type', '=', 'CommonJS')
    ->count();
echo($res);

echo "<br/><br/>===   QUERY 4.2 (AGG FUNCTION):  ->from('reports.0.dependencies')->where('line', '<', 3)->avg('line');   ===<br/><br/>";
$jsonq = new Jsonq('Request.json');
$res = $jsonq->from('reports.0.dependencies')
    ->where('line', '<', 3)
    ->avg('line');
echo($res);
?>