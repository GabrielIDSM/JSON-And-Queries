<?php

require_once 'vendor/autoload.php';

use Nahid\JsonQ\Jsonq;

$jsonq = new Jsonq('Request.json');

$res = $jsonq->from('reports')
    ->get();
echo($res);

?>