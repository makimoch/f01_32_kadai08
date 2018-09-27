<?php
//入力チェック(受信確認処理追加)
if(
  !isset($_POST['name']) || $_POST['name']=="" ||
  !isset($_POST['url']) || $_POST['url']=="" 
){
  exit('ParamError');
}

//1. POSTデータ取得
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];

//2. DB接続します(エラー処理追加)
include('functions.php'); 
$pdo = db_conn(); 


//３．データ登録SQL作成
$sql ='INSERT INTO '. $table .'(id, name, url, comment, indate )
VALUES(NULL, :a1, :a2, :a3, sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR); 
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);   
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);  
$status = $stmt->execute(); 

//４．データ登録処理後
if($status==false){
  errorMsg($stmt);
}else{
  //５．index.phpへリダイレクト
  header('Location: index.php');
  exit;
}

?>
