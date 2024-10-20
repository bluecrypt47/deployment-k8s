<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<!-- Horizontal Layout -->
<div class="row clearfix">
    <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12 center-block" style="float:none">
        <div class="card">
            <div class="header">
                    <?php
			if(isset($_GET['submit'])) {
				$submit = $_GET['submit'];
				$cmd = shell_exec('ping -c 4 ' . $submit);
			}
			if(strpos($cmd, 'icmp_seq=1') !== false) {
				echo "<pre>Connected</pre>";
			} else echo "<pre>Not Connect</pre>";
		    ?>
            </div>
        </div>
    </div>
</div>
<!-- #END# Horizontal Layout -->
</body>
</html>
