<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>お問い合わせ完了画面</title>
</head>
<body>
  <h1>送信完了</h1>
  <p>お問い合わせありがとうございました。</p>

  <p>名前：${onamae}</p>
  <p>メールアドレス：${mail_address}</p>
  <p>性別：${sex}</p>

  <p>お問い合わせ種別：</p>
  <ul>
    <c:forEach var="cate" items="${cates}">
      <li>${cate}</li>
    </c:forEach>
  </ul>

  <p>住まいエリア：${pref}</p>

  <p>メッセージ：</p>
  <p style="white-space: pre-wrap;">${message}</p>

  <p><a href="${pageContext.request.contextPath}/input.jsp">入力画面へ戻る</a></p>
</body>
</html>