DROP TABLE IF EXISTS sandwich;

CREATE TABLE sandwich (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT
);

INSERT INTO sandwich (title, description) VALUES ('Ham', 'Tasty');
INSERT INTO sandwich (title, description) VALUES ('Jam', 'Jasty');
INSERT INTO sandwich (title, description) VALUES ('Spam', 'Spasty');
INSERT INTO sandwich (title, description) VALUES ('Clam', 'Clasty');
INSERT INTO sandwich (title, description) VALUES ('Lamb', 'Lasty');
