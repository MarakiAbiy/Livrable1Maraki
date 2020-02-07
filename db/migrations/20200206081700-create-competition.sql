CREATE TABLE competition(
  comp_nom varchar(),
  comp_id varchar(),
  venue varchar (),
  start_date date(),
  start_time time(),
  duree numeric(),

  PRIMARY KEY (comp_id)
);

CREATE SEQUENCE competition_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

INSERT INTO schema_migrations (migration, migrated_at)
VALUES ('20200206081700-create-competition.sql',
        NOW()::timestamp);
