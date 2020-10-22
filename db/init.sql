SET client_encoding = 'UTF8';

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS tag;
DROP TABLE IF EXISTS menu;

CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL NOT NULL,
  fire_id VARCHAR(32) NOT NULL,
  last_name VARCHAR(8) NOT NULL,
  first_name VARCHAR(8) NOT NULL,
  birthday DATE NOT NULL,
  PRIMARY KEY (user_id)
);

CREATE TABLE IF NOT EXISTS tag (
  tag_id SERIAL NOT NULL,
  tag_name VARCHAR(64) NOT NULL,
  PRIMARY KEY (tag_id)
);

CREATE TABLE IF NOT EXISTS menu (
  menu_id SERIAL NOT NULL,
  training_name VARCHAR(256) NOT NULL,
  purpose VARCHAR(512) NOT NULL,
  organize VARCHAR(1028) NOT NULL,
  tag_id INT NOT NULL,
  user_id INT NOT NULL,
  figure_url VARCHAR(256),
  video_url VARCHAR(256),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (tag_id) REFERENCES tag(tag_id) ON UPDATE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(user_id) ON UPDATE CASCADE,
  PRIMARY KEY (menu_id)
);

