BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "users" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"coach_id"	integer
);
CREATE TABLE IF NOT EXISTS "employees" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"account"	varchar,
	"employee_id"	integer,
	"manager_id"	integer,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "comments" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title"	varchar,
	"commentable_type"	varchar,
	"commentable_id"	integer,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "news" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title"	varchar,
	"text"	text,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "articles" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title"	varchar,
	"text"	text,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "manager_histories" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"joining_date"	date,
	"total_experience"	integer,
	"manager_id"	integer,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	CONSTRAINT "fk_rails_12b5d02349" FOREIGN KEY("manager_id") REFERENCES "managers"("id")
);
CREATE TABLE IF NOT EXISTS "managers" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"email"	varchar,
	"contact"	varchar,
	"department_id"	integer,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	CONSTRAINT "fk_rails_ff17ccb632" FOREIGN KEY("department_id") REFERENCES "departments"("id")
);
CREATE TABLE IF NOT EXISTS "departments" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "accounts" (
	"id"	integer NOT NULL,
	"account_number"	integer DEFAULT NULL,
	"supplier_id"	integer DEFAULT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	PRIMARY KEY("id")
);
CREATE TABLE IF NOT EXISTS "suppliers" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "student_projects" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"student_id"	integer,
	"project_id"	integer,
	"submission_date"	date,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	CONSTRAINT "fk_rails_67a1dd626a" FOREIGN KEY("project_id") REFERENCES "projects"("id"),
	CONSTRAINT "fk_rails_cd27636194" FOREIGN KEY("student_id") REFERENCES "students"("id")
);
CREATE TABLE IF NOT EXISTS "projects" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"description"	text,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "courses_students" (
	"course_id"	integer NOT NULL,
	"student_id"	integer NOT NULL
);
CREATE TABLE IF NOT EXISTS "courses" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"description"	text,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "blogs" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"title"	varchar,
	"content"	text,
	"student_id"	integer,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	CONSTRAINT "fk_rails_933c57d857" FOREIGN KEY("student_id") REFERENCES "students"("id")
);
CREATE TABLE IF NOT EXISTS "students" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar,
	"email"	varchar,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" (
	"key"	varchar NOT NULL,
	"value"	varchar,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	PRIMARY KEY("key")
);
CREATE TABLE IF NOT EXISTS "schema_migrations" (
	"version"	varchar NOT NULL,
	PRIMARY KEY("version")
);
INSERT INTO "users" VALUES (1,'Player1','2023-01-03 08:25:14.840509','2023-01-03 08:28:41.141030',4);
INSERT INTO "users" VALUES (2,'Player2','2023-01-03 08:25:14.896949','2023-01-03 08:25:14.896949',NULL);
INSERT INTO "users" VALUES (3,'Player3','2023-01-03 08:25:15.770412','2023-01-03 08:25:15.770412',NULL);
INSERT INTO "users" VALUES (4,'coach1','2023-01-03 08:25:35.837895','2023-01-03 08:25:35.837895',NULL);
INSERT INTO "comments" VALUES (1,'comment for Article 1','Article',1,'2023-01-02 10:43:57.232267','2023-01-02 10:43:57.232267');
INSERT INTO "comments" VALUES (2,'comment for news 1','News',1,'2023-01-02 10:45:24.396654','2023-01-02 10:45:24.396654');
INSERT INTO "news" VALUES (1,'news 1',NULL,'2023-01-02 10:43:04.342528','2023-01-02 10:43:04.342528');
INSERT INTO "articles" VALUES (1,'article 1',NULL,'2023-01-02 10:43:03.285514','2023-01-02 10:43:03.285514');
INSERT INTO "articles" VALUES (2,'article 2',NULL,'2023-01-02 10:43:03.321355','2023-01-02 10:43:03.321355');
INSERT INTO "manager_histories" VALUES (1,'2022-11-01',2,1,'2023-02-09 13:52:12.423232','2023-02-09 13:52:12.423232');
INSERT INTO "managers" VALUES (1,'Nouman','noman@gmail.com','03335465765',1,'2023-02-09 13:51:32.424154','2023-02-09 13:51:32.424154');
INSERT INTO "managers" VALUES (2,'Nouman','noman@gmail.com','03335465765',3,'2023-02-13 09:16:19.660647','2023-02-13 09:16:19.660647');
INSERT INTO "managers" VALUES (3,'shah',NULL,NULL,4,'2023-02-13 13:48:32.340061','2023-02-13 13:48:32.340061');
INSERT INTO "departments" VALUES (1,'Production department','2023-02-09 13:39:20.348035','2023-02-09 13:39:20.348035');
INSERT INTO "departments" VALUES (2,'Accounts department','2023-02-09 13:39:21.395565','2023-02-09 13:39:21.395565');
INSERT INTO "departments" VALUES (3,'Production department','2023-02-13 09:16:07.636916','2023-02-13 09:16:07.636916');
INSERT INTO "departments" VALUES (4,'tecnitian','2023-02-13 13:48:03.496479','2023-02-13 13:48:03.496479');
INSERT INTO "accounts" VALUES (1,123,1,'2023-01-02 09:31:58.922537','2023-01-02 09:31:58.922537');
INSERT INTO "suppliers" VALUES (1,'Nouman','2023-01-02 09:26:06.799804','2023-01-02 09:26:06.799804');
INSERT INTO "student_projects" VALUES (1,1,1,'2023-01-22','2023-01-02 09:00:37.598590','2023-01-02 09:00:37.598590');
INSERT INTO "student_projects" VALUES (2,2,2,NULL,'2023-01-02 09:20:03.298934','2023-01-02 09:20:03.298934');
INSERT INTO "projects" VALUES (1,'Driver app',NULL,'2023-01-02 08:59:36.727389','2023-01-02 08:59:36.727389');
INSERT INTO "projects" VALUES (2,'School management app',NULL,'2023-01-02 08:59:36.835186','2023-01-02 08:59:36.835186');
INSERT INTO "courses_students" VALUES (1,1);
INSERT INTO "courses_students" VALUES (2,2);
INSERT INTO "courses_students" VALUES (2,1);
INSERT INTO "courses_students" VALUES (1,2);
INSERT INTO "courses_students" VALUES (1,3);
INSERT INTO "courses" VALUES (1,'Bio','Biology and science for males','2023-01-02 08:40:45.784779','2023-01-02 08:40:45.784779');
INSERT INTO "courses" VALUES (2,'Math','Math for 2nd year','2023-01-02 08:41:27.333929','2023-01-02 08:41:27.333929');
INSERT INTO "courses" VALUES (3,'Physics','Physics for 2nd year','2023-01-02 08:43:02.475727','2023-01-02 08:43:02.475727');
INSERT INTO "blogs" VALUES (1,'std1 blog','this is a blog',1,'2023-01-02 08:36:05.494320','2023-01-02 08:36:05.494320');
INSERT INTO "blogs" VALUES (2,'std1 blog','this is a blog',1,'2023-01-02 09:38:21.745359','2023-01-02 09:38:21.745359');
INSERT INTO "blogs" VALUES (3,'std1 2nd  blog','this is 2nd blog',1,'2023-01-02 09:40:48.425102','2023-01-02 09:40:48.425102');
INSERT INTO "students" VALUES (1,'Nouman','nouman@gmail.com','2023-01-02 08:28:39.906872','2023-01-02 08:28:39.906872');
INSERT INTO "students" VALUES (2,'shahmeer','shahmeer@gmail.com','2023-01-02 08:28:56.904538','2023-01-02 08:28:56.904538');
INSERT INTO "students" VALUES (3,'farhan','farhan@gmail.com','2023-01-02 08:29:08.929262','2023-01-02 08:29:08.929262');
INSERT INTO "students" VALUES (4,'Fatima','fatima@gmail.com','2023-01-02 08:29:24.352707','2023-01-02 08:29:24.352707');
INSERT INTO "ar_internal_metadata" VALUES ('environment','development','2023-01-02 08:25:43.107753','2023-01-02 08:25:43.107753');
INSERT INTO "schema_migrations" VALUES ('20220829080757');
INSERT INTO "schema_migrations" VALUES ('20220829081526');
INSERT INTO "schema_migrations" VALUES ('20220829101135');
INSERT INTO "schema_migrations" VALUES ('20220829102404');
INSERT INTO "schema_migrations" VALUES ('20220829114512');
INSERT INTO "schema_migrations" VALUES ('20220829114536');
INSERT INTO "schema_migrations" VALUES ('20220829131830');
INSERT INTO "schema_migrations" VALUES ('20220829132126');
INSERT INTO "schema_migrations" VALUES ('20220829132741');
INSERT INTO "schema_migrations" VALUES ('20220829144252');
INSERT INTO "schema_migrations" VALUES ('20220829144327');
INSERT INTO "schema_migrations" VALUES ('20220829144336');
INSERT INTO "schema_migrations" VALUES ('20220829174722');
INSERT INTO "schema_migrations" VALUES ('20220829174723');
INSERT ICREATE INDEX IF NOT EXISTS "index_accounts_on_supplier_id" ON "accounts" (
	"supplier_id"
);NTO "schema_migrations" VALUES ('20220829174732');
INSERT INTO "schema_migrations" VALUES ('20220902125924');
INSERT INTO "schema_migrations" VALUES ('20220902142332');
INSERT INTO "schema_migrations" VALUES ('20220902142441');
CREATE INDEX IF NOT EXISTS "index_manager_histories_on_manager_id" ON "manager_histories" (
	"manager_id"
);
CREATE INDEX IF NOT EXISTS "index_managers_on_department_id" ON "managers" (
	"department_id"
);

CREATE INDEX IF NOT EXISTS "index_student_projects_on_project_id" ON "student_projects" (
	"project_id"
);
CREATE INDEX IF NOT EXISTS "index_student_projects_on_student_id" ON "student_projects" (
	"student_id"
);
CREATE INDEX IF NOT EXISTS "index_blogs_on_student_id" ON "blogs" (
	"student_id"
);
COMMIT;
