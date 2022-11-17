CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar,
  "email" varchar,
  "password" varchar,
  "age" integer,
  "role_id" varchar
);

CREATE TABLE "courses" (
  "id" serial PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "level" varchar,
  "teacher" varchar,
  "video_id" uuid,
  "categories_id" varchar
);

CREATE TABLE "videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar
);

CREATE TABLE "categories" (
  "id" varchar PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "roles" (
  "id" varchar PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "orders" (
  "id" serial PRIMARY KEY,
  "user_id" uuid,
  "course_id" serial
);

ALTER TABLE "orders" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("video_id") REFERENCES "videos" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");

insert into users (
id,
first_name,
last_name,
email,
"password",
age

) values
(
'636d690c-6231-11ed-9b6a-0242ac120002',
'Juan', 
'Solis',
'tiagojar@hotma.com',
'backend',
'23'
),
(
'1b2f5050-662e-11ed-9022-0242ac120002',
'Lina', 
'Amares',
'tamartilove52@yahoo.com',
'linipis2',
'28'
);


insert into courses (
title,
description,
level,
teacher
) values (
'Development',
'A course where you will learn to program from scratch',
'5',
'Pedro'
),(
'Graphic design',
'Here you will learn to create your designs from scratch',
'4',
'Juanita'
);

insert into videos (
id,
title,
url
)values(
'8fb0bb8c-6631-11ed-9022-0242ac120002',
'How to develop',
'https://www.youtube.com/watch?v=bJzb-RuUcMU&ab_channel=CroatCode'
);

insert into categories (
id,
name
)values(
10,
'paint'
),(
11,
'code'
);



insert into roles(
id,
name
)values(
1,
'Teacher'
), (
2,
'Student'
);

