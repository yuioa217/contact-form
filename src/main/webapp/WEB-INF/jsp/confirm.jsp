<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>お問い合わせ確認画面</title>
</head>
<body>
  <h1>お問い合わせ確認画面</h1>

  <form action="${pageContext.request.contextPath}/contact/thanks" method="POST">

    <p>名前：${onamae}</p>
    <input type="hidden" name="onamae" value="${onamae}">

    <p>メールアドレス：${mail_address}</p>
    <input type="hidden" name="mail_address" value="${mail_address}">

    <p>性別：${sex}</p>
    <input type="hidden" name="sex" value="${sex}">

    <p>お問い合わせ種別：</p>
    <ul>
      <c:forEach var="cate" items="${cates}">
        <li>${cate}</li>
        <input type="hidden" name="cates" value="${cate}">
      </c:forEach>
    </ul>

    <p>住まいエリア：${pref}</p>
    <input type="hidden" name="pref" value="${pref}">

    <p>メッセージ：</p>
    <p style="white-space: pre-wrap;">${message}</p>
    <input type="hidden" name="message" value="${message}">

    <button type="submit">送信する</button>
  </form>
</body>
</html>