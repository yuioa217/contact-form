<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>お問い合わせ入力画面</title>
</head>
<body>
  <h1>お問い合わせ入力画面</h1>

  <form action="<%= request.getContextPath() %>/contact/confirm" method="POST">
    <div>
      <label for="onamae">名前</label><br>
      <input type="text" id="onamae" name="onamae">
    </div>

    <br>

    <div>
      <label for="mail_address">メールアドレス</label><br>
      <input type="email" id="mail_address" name="mail_address">
    </div>

    <br>

    <div>
      <span>性別</span><br>
      <label><input type="radio" name="sex" value="男性">男性</label>
      <label><input type="radio" name="sex" value="女性">女性</label>
    </div>

    <br>

    <div>
      <span>お問い合わせ種別</span><br>
      <label><input type="checkbox" name="cates" value="製品について">製品について</label><br>
      <label><input type="checkbox" name="cates" value="サービスについて">サービスについて</label><br>
      <label><input type="checkbox" name="cates" value="採用について">採用について</label><br>
      <label><input type="checkbox" name="cates" value="その他">その他</label>
    </div>

    <br>

    <div>
      <label for="pref">住まいエリア</label><br>
      <select id="pref" name="pref">
        <option value="">選択してください</option>
        <option value="北海道">北海道</option>
        <option value="東北">東北</option>
        <option value="関東">関東</option>
        <option value="中部">中部</option>
        <option value="近畿">近畿</option>
        <option value="中国">中国</option>
        <option value="四国">四国</option>
        <option value="九州・沖縄">九州・沖縄</option>
      </select>
    </div>

    <br>

    <div>
      <label for="message">メッセージ</label><br>
      <textarea id="message" name="message" rows="6" cols="40"></textarea>
    </div>

    <br>

    <button type="submit">確認画面へ</button>
  </form>
</body>
</html>