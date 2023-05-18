CREATE TABLE c
(
    CNO INT PRIMARY KEY,
    CNAME CHAR(20) NOT NULL,
    CREDIT TINYINT NOT NULL,
    CDEPT CHAR(10) NOT NULL,
    TNAME CHAR(20) NOT NULL,
    FOREIGN KEY (TNAME) REFERENCES t(TNAME)
);

INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C1', '可视化技术', 4, '计算机', '李含章');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C2', '数据结构', 4, '计算机', '刘红');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C3', '离散数学', 6, '信息安全', '张宇迪');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C4', '计算机组成原理', 4, '计算机', '李含章');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C5', '数据库系统', 4, '计算机', '吴志刚');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C6', 'python程序设计', 4, '计算机', '吴志刚');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C7', '编译原理', 4, '计算机', '徐一');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C8', '系统结构', 4, '计算机', '刘红');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`) VALUES ('C9', '古典主义音乐', 3, '通识选修', '康文');
