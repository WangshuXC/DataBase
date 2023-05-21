CREATE TABLE s (
    SNO CHAR(10) PRIMARY KEY,
    SNAME CHAR(20) NOT NULL,
    SEX CHAR(2) NOT NULL,
    AGE TINYINT NOT NULL,
    SDEPT CHAR(10) NOT NULL,
    PSWD CHAR(20) NOT NULL
);
CREATE TABLE t (
    TNO CHAR(10) PRIMARY KEY,
    TNAME CHAR(20) NOT NULL,
    SEX CHAR(2) NOT NULL,
    AGE TINYINT NOT NULL,
    TDEPT CHAR(10) NOT NULL,
    PSWD CHAR(20) NOT NULL
);
CREATE INDEX idx_tname ON t(TNAME);
CREATE TABLE c (
    CNO CHAR(10) PRIMARY KEY,
    CNAME CHAR(20) NOT NULL,
    CREDIT TINYINT NOT NULL,
    CDEPT CHAR(10) NOT NULL,
    TNAME CHAR(20) NOT NULL,
    FOREIGN KEY (TNAME) REFERENCES t(TNAME)
);
CREATE INDEX idx_sno ON s(SNO);
CREATE INDEX idx_cno ON c(CNO);
CREATE TABLE sc (
    SNO CHAR(10) NOT NULL,
    CNO CHAR(10) NOT NULL,
    GRADE TINYINT NOT NULL,
    PRIMARY KEY (SNO, CNO),
    FOREIGN KEY (SNO) REFERENCES s(SNO),
    FOREIGN KEY (CNO) REFERENCES c(CNO)
);
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S1', '李翼君', '女', '19', '计算机', 'S1');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2', '刘一鸣', '男', '22', '信息安全', 'S2');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S3', '赵海', '男', '20', '信息安全', 'S3');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S4', '朱赛', '男', '20', '计算机', 'S4');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S5', '刘艺霖', '女', '18', '计算机', 'S5');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S6', '刘意', '男', '21', '计算机', 'S6');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S7', '王春', '男', '20', '信息安全', 'S7');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S8', '范心澄', '女', '18', '信息安全', 'S8');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S9', '雪涛', '女', '19', '计算机', 'S9');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T301', '康文', '女', 35, '通识选修', 'T601');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T401', '吴志刚', '男', 40, '计算机技术', 'T401');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T402', '徐一', '女', 33, '计算机技术', 'T402');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T403', '李含章', '男', 50, '计算机技术', 'T403');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T404', '刘红', '女', 46, '计算机技术', 'T404');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T601', '张宇迪', '男', 49, '信息安全', 'T501');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C1', '可视化技术', 4, '计算机', '李含章');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C2', '数据结构', 4, '计算机', '刘红');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C3', '离散数学', 6, '信息安全', '张宇迪');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C4', '计算机组成原理', 4, '计算机', '李含章');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C5', '数据库系统', 4, '计算机', '吴志刚');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C6', 'python程序设计', 4, '计算机', '吴志刚');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C7', '编译原理', 4, '计算机', '徐一');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C8', '系统结构', 4, '计算机', '刘红');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C9', '古典主义音乐', 3, '通识选修', '康文');
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S1', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S1', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S1', 'C4', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S1', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2', 'C5', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S4', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S4', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S4', 'C9', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S5', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S5', 'C8', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S5', 'C9', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S8', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S1', 'C8', 77);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S7', 'C6', 80);