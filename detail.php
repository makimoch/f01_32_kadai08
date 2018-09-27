<?php
// getで送信されたidを取得
$id = $_GET['id'];
echo "GET:".$id;


//1.  DB接続します


include('functions.php'); 
$pdo = db_conn(); 

//２．データ登録SQL作成，指定したidのみ表示する
$stmt = $pdo->prepare('SELECT * FROM gs_bm_table WHERE id = :id');
$stmt->bindValue(':id',$id, PDO::PARAM_INT);  //文字列の場合TはSTR
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

<!-- htmlは「index.php」とほぼ同じです -->
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>更新ページ</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style>
</head>
<body>

<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<form method="post" action="update.php">
  <div class="jumbotron">
   <fieldset>
    <legend>更新ページ</legend>
     <label>書籍名：<input type="text" name="name" value="<?=$rs['name']?>"></label><br>
     <label>URL：<input type="text" name="url" value="<?=$rs['url']?>"></label><br>
     <label><textArea name="comment" rows="4" cols="40"><?=$rs['comment']?></textArea></label><br>
     <input type="submit" value="送信">
     <input type="hidden" name="id" value="<?=$rs['id']?>">
    </fieldset>
  </div>
</form>
<!-- Main[End] -->


</body>
</html>
