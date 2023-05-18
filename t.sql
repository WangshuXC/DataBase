CREATE TABLE t
(
    TNO CHAR(4) PRIMARY KEY,
    TNAME CHAR(20) NOT NULL,
    SEX CHAR(2) NOT NULL,
    AGE TINYINT NOT NULL,
    TDEPT CHAR(10) NOT NULL,
    PSWD CHAR(20) NOT NULL
);

INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T301', '康文', '女', 35, '通识选修', 'T601');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T401', '吴志刚', '男', 40, '计算机技术', 'T401');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T402', '徐一', '女', 33, '计算机技术', 'T402');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T403', '李含章', '男', 50, '计算机技术', 'T403');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T404', '刘红', '女', 46, '计算机技术', 'T404');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`) VALUES ('T601', '张宇迪', '男', 49, '信息安全', 'T501');
