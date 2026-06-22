-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。

CREATE DATABASE Postgresql;

-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
CREATE TYPE gender_status AS ENUM ('Man', 'Woman', 'Other');
CREATE TABLE users (
    id SERIAL NOT NULL,
    name VARCHAR(255) NOT NULL DEFAULT '' ,
    age int NOT NULL DEFAULT 0,
    gender gender_status NOT NULL DEFAULT 'Other' comment '性別',
);


-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
