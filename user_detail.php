<?php
// getで送信されたidを取得
$id = $_GET['id'];
echo "GET:".$id;


//1.  DB接続します


include('user_functions.php'); 
$pdo = db_conn(); 

//２．データ登録SQL作成
$stmt = $pdo->prepare('SELECT * FROM gs_user_table WHERE id = :id');
$stmt->bindValue(':id',$id, PDO::PARAM_INT);  
$status = $stmt->execute();

//３．データ表示
if($status==false){
  // エラーのとき
  errorMsg($stmt);
}else{
  // エラーでないとき
  $rs = $stmt->fetch();
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>User更新ページ</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="user_select.php">User一覧</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="user_update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>User更新ページ</legend>
     <label>名前：<input type="text" name="name" value="<?=$rs['name']?>"></label><br>
     <label>lid：<input type="text" name="lid"></label><br>
     <label>lpw：<input type="text" name="lpw"></label><br>
     <label>kanri_flg：<input type="text" name="kanri_flg"></label><br>
     <label>life_flg：<input type="text" name="life_flg"></label><br>   
     <input type="submit" value="送信">
     <input type="hidden" name="id" value="<?=$rs['id']?>">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
