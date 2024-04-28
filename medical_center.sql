// Part A //Hospital
CREATE TABLE "hosptial" (
  "id" integer PRIMARY KEY,
  "Hospital_name" text NOT NULL
);

CREATE TABLE "doctor" (
  "id" integer PRIMARY KEY,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL
);

CREATE TABLE "medical_center" (
  "id" integer PRIMARY KEY,
  "hospital_id" text NOT NULL,
  "doctor_id" text NOT NULL
);

CREATE TABLE "patient" (
  "id" integer PRIMARY KEY,
  "first_name" text,
  "last_name" text
);

CREATE TABLE "diease" (
  "id" integer PRIMARY KEY,
  "diease" text NOT NULL
);

CREATE TABLE "visit" (
  "id" integer PRIMARY KEY,
  "doctor_id" text,
  "patient_id" text
);

CREATE TABLE "sickness" (
  "id" integer PRIMARY KEY,
  "patient_id" text NOT NULL,
  "diease_id" text
);


ALTER TABLE "hosptial" ADD FOREIGN KEY ("id") REFERENCES "medical_center" ("hospital_id");

ALTER TABLE "doctor" ADD FOREIGN KEY ("id") REFERENCES "medical_center" ("doctor_id");

ALTER TABLE "doctor" ADD FOREIGN KEY ("id") REFERENCES "visit" ("doctor_id");

ALTER TABLE "patient" ADD FOREIGN KEY ("id") REFERENCES "visit" ("patient_id");

ALTER TABLE "patient" ADD FOREIGN KEY ("id") REFERENCES "sickness" ("patient_id");

ALTER TABLE "diease" ADD FOREIGN KEY ("id") REFERENCES "sickness" ("diease_id");


