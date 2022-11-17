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
  "id" varchar PRIMARY KEY,
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
  "course_id" varchar
);

ALTER TABLE "orders" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "orders" ADD FOREIGN KEY ("course_id") REFERENCES "courses" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("video_id") REFERENCES "videos" ("id");

ALTER TABLE "users" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");


insert into videos (
id,
title,
url
)values(
'8fb0bb8c-6631-11ed-9022-0242ac120002',
'How to develop',
'https://www.youtube.com/watch?v=bJzb-RuUcMU&ab_channel=CroatCode'
), (
'66497a30-663c-11ed-9022-0242ac120002',
'How to design and paint',
'https://www.youtube.com/watch?v=4xYHloidI8M&ab_channel=EnvatoTuts%2B'
);

insert into categories (
id,
name
)values(
'10',
'code'
),(
'11',
'paint'
);



insert into roles(
id,
name
)values(
'1',
'Teacher'
), (
'2',
'Student'
);



insert into users (
id,
first_name,
last_name,
email,
"password",
age,
role_id

) values
(
'636d690c-6231-11ed-9b6a-0242ac120002',
'Juan', 
'Solis',
'tiagojar@hotma.com',
'backend',
'23',
'1'
),
(
'1b2f5050-662e-11ed-9022-0242ac120002',
'Lina', 
'Amares',
'tamartilove52@yahoo.com',
'linipis2',
'28',
'2'
);


insert into courses (
id,
title,
description,
level,
teacher,
video_id,
categories_id
) values (
'1001',
'Development',
'A course where you will learn to program from scratch',
'5',
'Pedro',
'8fb0bb8c-6631-11ed-9022-0242ac120002',
'10'
),(
'1002',
'Graphic design',
'Here you will learn to create your designs from scratch',
'4',
'Juanita',
'66497a30-663c-11ed-9022-0242ac120002',
'11'
);



insert into orders (
user_id,
course_id 
) values (
'636d690c-6231-11ed-9b6a-0242ac120002',
'1001'
),(
'1b2f5050-662e-11ed-9022-0242ac120002',
'1002'
);

  











