<?php
//1. GETデータ取得
$id = $_GET['id']; 
//削除するときはidに紐づいている情報を削除するのでidだけでOK

//2. DB接続します(エラー処理追加)

include('functions.php'); 
$pdo = db_conn(); 


//3．データ登録SQL作成
$stmt = $pdo->prepare('DELETE FROM gs_bm_table WHERE id=:id');
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//4．データ登録処理後
if($status==false){
  errorMsg($stmt);
}else{
  //select.phpへリダイレクト
  header('Location: select.php');
  exit;
}
?>
