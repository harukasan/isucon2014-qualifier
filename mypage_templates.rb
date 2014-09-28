def gen_mypage(last_login)
  <<"EOT"
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/stylesheets/bootstrap.min.css">
<link rel="stylesheet" href="/stylesheets/bootflat.min.css">
<link rel="stylesheet" href="/stylesheets/isucon-bank.css">
<title>isucon4</title>
</head>
<body data-ip="#{last_login["ip"]}" data-at="#{last_login["created_at"]}">
<script type="text/template" id="last-logined-at">#{last_login["created_at"]}</script>
<script type="text/template" id="last-logined-ip">#{last_login["ip"]}</script>
<script src="/mypage.js" type="text/javascript"></script>
</body>
</html>
EOT
end
