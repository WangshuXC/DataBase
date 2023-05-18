CREATE TABLE s
(
    SNO CHAR(4) PRIMARY KEY,
    SNAME CHAR(20) NOT NULL,
    SEX CHAR(2) NOT NULL,
    AGE TINYINT NOT NULL,
    SDEPT CHAR(10) NOT NULL,
    PSWD CHAR(20) NOT NULL
);

INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S1', '李翼君', '女', '19', '计算机', 'S1');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S2', '刘一鸣', '男', '22', '信息安全', 'S2');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S3', '赵海', '男', '20', '信息安全', 'S3');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S4', '朱赛', '男', '20', '计算机', 'S4');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S5', '刘艺霖', '女', '18', '计算机', 'S5');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S6', '刘意', '男', '21', '计算机', 'S6');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S7', '王春', '男', '20', '信息安全', 'S7');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S8', '范心澄', '女', '18', '信息安全', 'S8');
INSERT INTO `s` (`SNO`, `SNAME`, `SEX`, `AGE`, `SDEPT`, `PSWD`) VALUES ('S9', '雪涛', '女', '19', '计算机', 'S9');
