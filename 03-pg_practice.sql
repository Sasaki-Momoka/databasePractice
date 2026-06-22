-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。

CREATE DATABASE practice;

-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
//CREATE TYPE gender_status AS ENUM ('Man', 'Woman', 'Other');
CREATE TABLE users (
    id SERIAL NOT NULL,
    name VARCHAR(255) NOT NULL DEFAULT '' ,
    age int NOT NULL DEFAULT 0,
    gender gender_status NOT NULL DEFAULT 'Other'
);

ALTER TABLE users ADD PRIMARY KEY (id);

    COMMENT ON COLUMN users.name IS '氏名';
    COMMENT ON COLUMN users.age IS '年齢';
    COMMENT ON COLUMN users.gender IS '性別';

-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。

CREATE TABLE jobs (
    id SERIAL NOT NULL,
    user_id INT NOT NULL,
    name VARCHAR(255) NOT NULL DEFAULT '会社員',

  

PRIMARY KEY (id),
CONSTRAINT fk_user_id
FOREIGN KEY (user_id)
REFERENCES users(id)
);

     COMMENT ON COLUMN jobs.name IS '仕事名';
