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
  <title>お問い合わせ確認画面</title>
</head>
<body>
  <h1>お問い合わせ確認画面</h1>

  <form action="<%= request.getContextPath() %>/contact/thanks" method="POST">
    <p>名前：<%= onamae %></p>
    <input type="hidden" name="onamae" value="<%= onamae %>">

    <p>メールアドレス：<%= mailAddress %></p>
    <input type="hidden" name="mail_address" value="<%= mailAddress %>">

    <p>性別：<%= sex %></p>
    <input type="hidden" name="sex" value="<%= sex %>">

    <p>お問い合わせ種別：</p>
    <ul>
      <%
          if (cates != null) {
              for (String cate : cates) {
      %>
        <li><%= cate %></li>
        <input type="hidden" name="cates" value="<%= cate %>">
      <%
              }
          }
      %>
    </ul>

    <p>住まいエリア：<%= pref %></p>
    <input type="hidden" name="pref" value="<%= pref %>">

    <p>メッセージ：</p>
    <p style="white-space: pre-wrap;"><%= message %></p>
    <input type="hidden" name="message" value="<%= message %>">

    <button type="submit">送信する</button>
  </form>
</body>
</html>