CREATE TABLE athlete (
  nom varchar(),
  prenom varchar(),
  id varchar(),
  dateDeNaissance numeric(),
  sexe varchar(),

  PRIMARY KEY (id)
);

CREATE SEQUENCE athlete_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

INSERT INTO schema_migrations (migration, migrated_at)
VALUES ('20200206081600-create-athlete.sql',
        NOW()::timestamp);
