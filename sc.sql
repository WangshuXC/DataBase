CREATE TABLE sc
(
    SNO CHAR(4) NOT NULL,
    CNO CHAR(4) NOT NULL,
    PRIMARY KEY (SNO, CNO),
    FOREIGN KEY (SNO) REFERENCES s(SNO),
    FOREIGN KEY (CNO) REFERENCES c(CNO)
);

INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S1', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S1', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S1', 'C4', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S1', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S2', 'C5', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S2', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S4', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S4', 'C2', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S4', 'C9', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S5', 'C1', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S5', 'C8', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S5', 'C9', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S8', 'C6', 0);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S1', 'C8', 77);
INSERT INTO `sc` (`SNO`, `CNO`, `GRADE`) VALUES ('S7', 'C6', 80);