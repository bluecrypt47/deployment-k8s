<?php
if(file_exists("../class/binhthuan.txt")) {
	sleep(60);
	unlink("../class/binhthuan.txt");
}
?>
