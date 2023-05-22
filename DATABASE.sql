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
VALUES ('S2110001', '王否一', '男', '19', '物联网', '1');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110002', '王可零', '男', '22', '信息安全', '2');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110003', '史武天', '男', '20', '信息安全', '3');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110004', '史文地', '女', '20', '计算机', '4');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110951', '梁晓储', '男', '20', '物联网', '5');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110006', '王想宇', '男', '21', '计算机', '6');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110007', '王思宙', '男', '20', '信息安全', '7');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110008', '子悦', '女', '18', '物联网', '8');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110009', '孙愁', '女', '19', '计算机', '9');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110010', '刘破铭', '男', '20', '信息安全', '10');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`)
VALUES ('S2110011', '刘修箴', '女', '19', '计算机', '11');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T001', '祝武壮', '男', 58, '数学', '1');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T002', '刘哲文', '男', 42, '计算机技术', '2');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T003', '李浪', '女', 35, '计算机技术', '3');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T004', '张石', '男', 40, '计算机技术', '4');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T005', '温龙龙', '男', 40, '计算机技术', '5');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T006', '李庆除', '男', 49, '网络安全', '6');
INSERT INTO `t` (`TNO`, `TNAME`, `SEX`, `AGE`, `TDEPT`, `PSWD`)
VALUES ('T007', '李洁', '女', 33, '马克思', '7');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C1', '高等数学', 4, '数学', '祝武壮');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C2', '软件安全', 4, '计算机', '刘哲文');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C3', '离散数学', 4, '计算机', '温龙龙');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C4', '组成原理', 4, '计算机', '李浪');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C5', '数据库系统', 6, '计算机', '温龙龙');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C6', '程序设计', 4, '计算机', '张石');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C7', '嵌入式系统', 4, '计算机', '李庆除');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C8', '系统结构', 4, '计算机', '李浪');
INSERT INTO `c` (`CNO`, `CNAME`, `CREDIT`, `CDEPT`, `TNAME`)
VALUES ('C9', '毛概论', 3, '通识必修', '李洁');
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110001', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110001', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110001', 'C4', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110001', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110002', 'C5', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110002', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110004', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110004', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110004', 'C9', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110951', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110951', 'C5', 100);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110951', 'C9', 66);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110008', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110011', 'C8', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`)
VALUES ('S2110007', 'C6', 0);
CREATE INDEX idx_scgrade ON sc(GRADE);
CREATE TABLE databasegrade (
    SNO CHAR(10) NOT NULL,
    GRADE TINYINT NOT NULL,
    PRIMARY KEY (SNO),
    FOREIGN KEY (GRADE) REFERENCES sc(GRADE)
);
INSERT INTO `databasegrade` (`SNO`, `GRADE`)
VALUES ('S2110002', 0);
INSERT INTO `databasegrade` (`SNO`, `GRADE`)
VALUES ('S2110951', 100);
CREATE INDEX idx_scgrade ON sc(GRADE);
CREATE TABLE databasegrade (
    SNO CHAR(10) NOT NULL,
    GRADE TINYINT NOT NULL,
    PRIMARY KEY (SNO),
    FOREIGN KEY (GRADE) REFERENCES sc(GRADE)
);
INSERT INTO `databasegrade` (`SNO`, `GRADE`)
VALUES ('S2110002', 0);
INSERT INTO `databasegrade` (`SNO`, `GRADE`)
VALUES ('S2110951', 100);