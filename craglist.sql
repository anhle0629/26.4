CREATE TABLE "region" (
  "id" interger PRIMARY KEY,
  "region" text
);

CREATE TABLE "user" (
  "id" integer PRIMARY KEY,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL
);

CREATE TABLE "prefer_region" (
  "id" interger PRIMARY KEY,
  "user_id" integer NOT NULL,
  "region_id" integer NOT NULL
);

CREATE TABLE "post" (
  "id" integer PRIMARY KEY,
  "title" varchar[20],
  "description" text NOT NULL,
  "user_id" integer NOT NULL,
  "location" text,
  "region_id" integer NOT NULL
);

CREATE TABLE "categories" (
  "id" interger PRIMARY KEY,
  "category" text,
  "post_id" integer NOT NULL
);

ALTER TABLE "user" ADD FOREIGN KEY ("id") REFERENCES "post" ("user_id");

ALTER TABLE "region" ADD FOREIGN KEY ("id") REFERENCES "post" ("region_id");

ALTER TABLE "post" ADD FOREIGN KEY ("id") REFERENCES "categories" ("post_id");

ALTER TABLE "user" ADD FOREIGN KEY ("id") REFERENCES "prefer_region" ("user_id");

ALTER TABLE "region" ADD FOREIGN KEY ("id") REFERENCES "prefer_region" ("region_id");


