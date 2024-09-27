CREATE DATABASE test2;
USE test2;

CREATE TABLE demo_campaigndata (
  id int(11) NOT NULL AUTO_INCREMENT,
  date date NOT NULL,
  campaignid int(11) NOT NULL,
  impressions int(11) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO demo_campaigndata (id, date, campaignid, impressions) VALUES
(1, '2013-03-03', 1, 100),
(2, '2013-03-03', 2, 100),
(3, '2013-03-03', 3, 100),
(4, '2013-03-04', 2, 100),
(5, '2013-03-05', 1, 100),
(6, '2013-03-05', 2, 100);


CREATE TABLE demo_campaignfilter (
  id int(11) NOT NULL AUTO_INCREMENT,
  campaigntype int(11) NOT NULL,
  campaignid int(11) NOT NULL,
  PRIMARY KEY (id)
);
INSERT INTO demo_campaignfilter (id, campaigntype, campaignid) VALUES
(1, 1, 1),
(2, 1, 3);


CREATE TABLE demo_calendar (
  date date NOT NULL,
  PRIMARY KEY (date)
);
INSERT INTO demo_calendar (date) VALUES
('2013-03-01'),
('2013-03-02'),
('2013-03-03'),
('2013-03-04'),
('2013-03-05');

SELECT  a.date, COUNT(b.campaignid) totalStat
FROM    demo_campaigndata a
        LEFT JOIN demo_campaignfilter b
            ON  a.campaignid = b.campaignid AND
                b.campaigntype = 1
GROUP   BY a.date;

SELECT  *
FROM    demo_campaigndata a
        LEFT JOIN demo_campaignfilter b
            ON  a.campaignid = b.campaignid AND
                b.campaigntype = 1;
