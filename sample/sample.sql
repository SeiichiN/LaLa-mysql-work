
-- sampleデータベースの作成

CREATE DATABASE IF NOT EXISTS sample;

-- 使用宣言

USE sample;

-- あらかじめテーブルを削除

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- テーブル定義

CREATE TABLE employees (
  id       INT         AUTO_INCREMENT,
  name     VARCHAR(20) NOT NULL,
  age      INT         NOT NULL,
  birthday YEAR        NOT NULL,
  department_id CHAR(3),
  PRIMARY KEY (id)
);

CREATE TABLE departments (
  id   CHAR(3)     PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

-- データの登録

INSERT INTO employees
( name, age, birthday, department_id )
VALUES
( '菅原文太',   40, 1933, '001' ),
( '千葉真一',   34, 1939, '002' ),
( '北大路欣也', 30, 1943, '003' ),
( '梶芽衣子',   26, 1947, '002' );


INSERT INTO departments
  (id, name)
VALUES
  ('001', '総務部'),
  ('002', '営業部'),
  ('003', '経理部'),
  ('004', '開発部'),
  ('005', '人事部'),
  ('006', '情報システム部');

-- データの表示

SELECT * FROM employees;
SELECT * FROM departments;

