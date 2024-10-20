               <ul class="list">
                    <li class="header">CHUYÊN MỤC</li>
                    <li class="active">
                        <a href="index.php">
                            <i class="material-icons">home</i>
                            <span>Trang chủ</span>
                        </a>
                    </li>
                    <li>
                        <a href="thoat.php">
                            <i class="material-icons">text_fields</i>
                            <span>Thoát</span>
                        </a>
                    </li>                    
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>THỂ LOẠI</span>
                        </a>
                        <ul class="ml-menu">
                            <li>
                                <a href="?role=<?php echo $role; ?>&p=theloai_them">Thêm thể loại</a>
                            </li>
                            <li>
                                <a href="?role=<?php echo $role; ?>&p=theloai_ds">Danh sách thể loại</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="menu-toggle">
                            <i class="material-icons">view_list</i>
                            <span>LOẠI TIN</span>
                        </a>
                        <ul class="ml-menu">
                            <li> <a href="?role=<?php echo $role; ?>&p=loaitin_them">Thêm loại tin</a> </li>
                            <li> <a href="?role=<?php echo $role; ?>&p=loaitin_ds">Danh sách loại tin</a> </li>
                        </ul>
                    </li>
                   <li>
                       <a href="javascript:void(0);" class="menu-toggle">
                           <i class="material-icons">view_list</i>
                           <span>TIN TỨC</span>
                       </a>
                       <ul class="ml-menu">
                           <li> <a href="?role=<?php echo $role; ?>&p=tin_them">Thêm tin</a> </li>
                           <li> <a href="?role=<?php echo $role; ?>&p=tin_ds">Danh sách tin</a> </li>
                       </ul>
                   </li>
		   <li>
			<a href="?role=<?php echo $role; ?>&p=test-connect&submit=127.0.0.1"><i class="material-icons">text_fields</i><span>KIỂM TRA KẾT NỐI VỚI CƠ SỞ DỮ LIỆU</span></a>
		   </li>
               </ul>         
