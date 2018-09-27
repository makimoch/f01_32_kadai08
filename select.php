<?php
//1.  DB接続します
include('functions.php'); 
$pdo = db_conn(); 

//２．データ登録SQL作成 SQLのコマンドを文字列で記載する
$stmt = $pdo->prepare('SELECT * FROM gs_bm_table;');
$status = $stmt->execute();

//３．データ表示
$view='';
if($status==false){
  errorMsg($stmt);
}else{
  //Selectデータの数だけ自動でループしてくれる
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= '<p>';
    $view .= '<a href="detail.php?id=' . $result['id'] . '">';  
    //更新ページへのaタグを作成 シングルクォートで囲む位置を確認すること！！
    $view .= $result['name'].'['.$result['indate'].']';
    $view .= '</a>';
    $view .= '　';
    $view .= '<a href="delete.php?id=' . $result['id'] . '">';  
    //削除用aタグを作成
    $view .= '［削除］';
    $view .= '</a>';
    $view .= '</p>';
  }
}

 ?>


<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>アンケート表示</title>
<link rel="stylesheet" href="css/range.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="index.php">データ登録ページへ</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?=$view?></div>
</div>
<!-- Main[End] -->

</body>
</html>
