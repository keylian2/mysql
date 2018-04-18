USE keylian;

DROP TABLE IF EXISTS web_users;

CREATE TABLE IF NOT EXISTS web_users(
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  wechatid varchar(255),
  password varchar(255) NOT NULL,
  userrole varchar(255) NOT NULL,
  active tinyint(1) NOT NULL,
  last_update TIMESTAMP NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY  (username)
);

INSERT INTO web_users
(username, email, wechatid, password, userrole, active, last_update)
VALUES ('guest', 'none', 'none', 'welcome', 'guest', 1, NOW());

INSERT INTO web_users
(username, email, wechatid, password, userrole, active, last_update)
VALUES ('steve', 'none', 'none', 'steve1010', 'investor', 1, NOW());
