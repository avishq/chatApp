<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyPage</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="https://cdn.conversejs.org/css/converse.min.css">
<script src="https://cdn.conversejs.org/dist/converse.min.js"></script>
</head>
<body>
	<h3>Hello World</h3>
</body>
<script>
	require([ 'converse' ], function(converse) {
		converse.initialize({
			//bosh_service_url : 'https://bind.conversejs.org', // Please use this connection manager only for testing purposes
			bosh_service_url : 'http://localhost:5280/http-bind',
			i18n : locales.en, // Refer to ./locale/locales.js to see which locales are supported
			show_controlbox_by_default : true,
			roster_groups : true
		});
	});
</script>
</html>