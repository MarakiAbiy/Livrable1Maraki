CREATE TABLE athlete (
  nom varchar(),
  prenom varchar(),
  id varchar(),
  dateDeNaissance numeric(),
  sexe varchar(),

  PRIMARY KEY (id)
);

CREATE TABLE competition(
  comp_nom varchar(),
  comp_id varchar(),
  venue varchar (),
  start_date date(),
  start_time time(),
  duree numeric(),

  PRIMARY KEY (comp_id)
);


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
