CREATE TABLE schema_migrations (
  migration varchar(1000),
  migrated_at timestamp DEFAULT NOW(),
  PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at)
VALUES ('20200206082000-create-migrations.sql');
