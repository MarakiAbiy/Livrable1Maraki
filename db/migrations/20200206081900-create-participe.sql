CREATE TABLE participe(
  id varchar(),
  comp_id varchar(),
  nom varchar (),
  sexe varchar(),
  start_date date(),
  start_time time(),


  PRIMARY KEY (id, comp_id),
  FOREIGN KEY (id) REFERENCES athlete(id),
  FOREIGN KEY (comp_id) REFERENCES competition(comp_id),
  FOREIGN KEY (nom) REFERENCES athlete(nom),
  FOREIGN KEY (sexe) REFERENCES athlete(sexe),
  FOREIGN KEY (start_date) REFERENCES competition(start_date),
  FOREIGN KEY (start_time) REFERENCES competition(start_time),
);

CREATE SEQUENCE participe_id_seq
  START WITH 1
  INCREMENT BY 1
  NO MINVALUE
  NO MAXVALUE
  CACHE 1;

INSERT INTO schema_migrations (migration, migrated_at)
VALUES ('20200206081900-create-participe.sql',
        NOW()::timestamp);
