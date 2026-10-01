-- データベース名: himiz02

create database if not exists himiz02;

use himiz02;

-- 存在していたらテーブル削除

drop table if exists persons;
drop table if exists genders;
drop table if exists prefectures;


-- テーブル定義

create table persons (
  id            int    primary key auto_increment,
  name          varchar(100) not null,
  gender_id     int     not null,
  birthday      date    not null,
  prefecture_id char(2) not null
);


-- genders表の定義

CREATE TABLE genders (
  id   INT         PRIMARY KEY,
  name VARCHAR(10) NOT NULL
);

-- データの挿入

INSERT INTO genders
VALUES
(1, '男性'),
(2, '女性');

-- 都道府県テーブルの読み込み

SOURCE prefectures.sql;


insert into persons
  (name, gender_id, birthday, prefecture_id)
values
  ('染谷将太',   1, '1992-09-03', '13'),
  ('二階堂ふみ', 2, '1994-09-21', '47'),
  ('渡辺哲',     1, '1950-03-11', '23'),
  ('窪塚洋介',   1, '1979-05-07', '14'),
  ('吉高由里子', 2, '1988-07-22', '13');


SELECT * FROM genders;
SELECT * FROM persons;

