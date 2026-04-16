<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String onamae = (String) request.getAttribute("onamae");
    String mailAddress = (String) request.getAttribute("mail_address");
    String sex = (String) request.getAttribute("sex");
    String[] cates = (String[]) request.getAttribute("cates");
    String pref = (String) request.getAttribute("pref");
    String message = (String) request.getAttribute("message");
%>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>お問い合わせ完了画面</title>
</head>
<body>
  <h1>送信完了</h1>
  <p>お問い合わせありがとうございました。</p>

  <p>名前：<%= onamae %></p>
  <p>メールアドレス：<%= mailAddress %></p>
  <p>性別：<%= sex %></p>

  <p>お問い合わせ種別：</p>
  <ul>
    <%
        if (cates != null) {
            for (String cate : cates) {
    %>
      <li><%= cate %></li>
    <%
            }
        }
    %>
  </ul>

  <p>住まいエリア：<%= pref %></p>

  <p>メッセージ：</p>
  <p style="white-space: pre-wrap;"><%= message %></p>

  <p><a href="<%= request.getContextPath() %>/contact/input">入力画面へ戻る</a></p>
</body>
</html>