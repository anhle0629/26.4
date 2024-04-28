CREATE TABLE "teams" (
  "id" integer PRIMARY KEY,
  "name" text NOT NULL
);

CREATE TABLE "players" (
  "id" integer PRIMARY KEY,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL
);

CREATE TABLE "match" (
  "id" integer PRIMARY KEY,
  "team1_id" integer NOT NULL,
  "team2_id" integer NOT NULL
);

CREATE TABLE "goeal" (
  "id" integer PRIMARY KEY,
  "goal" integer,
  "player_id" integer NOT NULL,
  "match_id" integer NOT NULL
);

CREATE TABLE "player_and_team" (
  "id" integer PRIMARY KEY,
  "player_id" integer NOT NULL,
  "team_id" integer NOT NULL
);

CREATE TABLE "referee" (
  "id" integer PRIMARY KEY,
  "first_name" text NOT NULL,
  "last_name" text NOT NULL,
  "match_id" integer NOT NULL
);

CREATE TABLE "date" (
  "id" integer PRIMARY KEY,
  "league" text,
  "start_date" date NOT NULL,
  "end_date" date NOT NULL
);

CREATE TABLE "ranking" (
  "id" integer PRIMARY KEY,
  "team_id" integer,
  "win" integer,
  "lost" integer,
  "matches" integer
);

ALTER TABLE "match" ADD FOREIGN KEY ("id") REFERENCES "goeal" ("match_id");

ALTER TABLE "players" ADD FOREIGN KEY ("id") REFERENCES "goeal" ("player_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "match" ("team1_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "match" ("team2_id");

ALTER TABLE "players" ADD FOREIGN KEY ("id") REFERENCES "player_and_team" ("player_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "player_and_team" ("team_id");

ALTER TABLE "match" ADD FOREIGN KEY ("id") REFERENCES "referee" ("match_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "ranking" ("team_id");
