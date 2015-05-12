DROP TABLE IF EXISTS candidates_test;
CREATE TABLE candidates_test (id INTEGER, val STRING)   row format delimited
  fields terminated by '\t'
  stored as textfile;
