<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>お問い合わせ入力画面</title>
</head>
<body>
  <h1>お問い合わせ入力画面</h1>

  <form action="<%= request.getContextPath() %>/contact/confirm" method="POST">

    名前：<br>
    <input type="text" name="onamae"><br><br>

    メールアドレス：<br>
    <input type="email" name="mail_address"><br><br>

    性別：<br>
    <input type="radio" name="sex" value="男性">男性
    <input type="radio" name="sex" value="女性">女性<br><br>

    お問い合わせ種別：<br>
    <input type="checkbox" name="cates" value="製品について">製品について<br>
    <input type="checkbox" name="cates" value="サービスについて">サービスについて<br>
    <input type="checkbox" name="cates" value="採用について">採用について<br>
    <input type="checkbox" name="cates" value="その他">その他<br><br>

    住まいエリア：<br>
    <select name="pref">
      <option value="">選択してください</option>
      <option value="北海道">北海道</option>
      <option value="東北">東北</option>
      <option value="関東">関東</option>
      <option value="中部">中部</option>
      <option value="近畿">近畿</option>
      <option value="中国">中国</option>
      <option value="四国">四国</option>
      <option value="九州・沖縄">九州・沖縄</option>
    </select><br><br>

    メッセージ：<br>
    <textarea name="message"></textarea><br><br>

    <button type="submit">確認画面へ</button>

  </form>
</body>
</html>