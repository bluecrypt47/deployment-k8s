<?php
class goc {
    public $host = "mysql-service";
    public $user = "root";
    public $pass = "123123";
    public $dbname = "tintuc_db";
    protected $db;
    function __construct()
    {
        $this->db = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
        $this->db->set_charset("utf8");
    }
}
?>
