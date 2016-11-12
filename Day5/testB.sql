
CREATE DATABASE IF NOT EXISTS testB;

CREATE TABLE IF NOT EXISTS testB.admin(
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK of admin',
  name VARCHAR(255) NOT NULL COMMENT '',
  password VARCHAR(255) NOT NULL COMMENT ''
);


CREATE TABLE IF NOT EXISTS testB.job(
  jobno INT AUTO_INCREMENT PRIMARY KEY COMMENT 'pk of job',
  jobname VARCHAR(255) NOT NULL COMMENT '',
  jobfun VARCHAR(255) NOT NULL ,
  joborder VARCHAR(255) not NULL
);
DROP table IF EXISTS testB.users;
CREATE TABLE IF NOT EXISTS testB.users (
  id INT AUTO_INCREMENT PRIMARY KEY COMMENT 'PK of users',
  name CHAR NOT NULL ,
  gender CHAR(2) NOT NULL ,
  career CHAR(4) NOT NULL ,
  subject VARCHAR(255) NOT NULL ,
  cap_discribe VARCHAR(255),
  jobchoose INT
);

ALTER TABLE testb.users
    ADD CONSTRAINT fk_user_job
FOREIGN KEY(jobchoose)
  REFERENCES testB.job (jobno);







