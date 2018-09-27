<?php
//入力チェック(受信確認処理追加)
if(
  !isset($_POST['name']) || $_POST['name']=='' ||
  !isset($_POST['url']) || $_POST['url']=='' 
){
  exit('ParamError');
}

//1. POSTデータ取得 POSTで送られたデータを$_POSTで受け取る
$id     = $_POST['id'];
$name   = $_POST['name'];
$url  = $_POST['url'];
$comment = $_POST['comment'];

//2. DB接続します(エラー処理追加)

include('functions.php'); 
$pdo = db_conn(); 


//3．データ登録SQL作成  SETの後に更新したいidを記載する 
//phpとSQLを見分けるためにSQLはあえて大文字にしている SET,WHERE,etc
$stmt = $pdo->prepare('UPDATE gs_bm_table SET name=:a1, url=:a2, comment=:a3 WHERE id=:id');
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//4．データ登録処理後
if($status==false){
  errorMsg($stmt);
}else{
  header('Location: select.php');
  exit;
}
?>
