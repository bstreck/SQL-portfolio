##Insert one more row in persons and then one more row in hobbies that is related to the newly inserted person.
  CREATE TABLE persons (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      age INTEGER);
      
  INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
  INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
  INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
  INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
  INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);
  INSERT INTO persons (name, age) VALUES ("See Quell", 16);
  
  CREATE table hobbies (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      person_id INTEGER,
      name TEXT);
      
  INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
  INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
  INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
  INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
  INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
  INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
  INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
  INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
  INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
  INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");
  INSERT INTO hobbies (person_id, name) VALUES 
  (6, 'coding');

##Select the 2 tables with a join so that you can see each person's name next to their hobby.
  SELECT p.name, h.name
  FROM persons AS p
  JOIN hobbies AS h
  ON p.id = h.person_id;

##Select only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.
  SELECT p.name, h.name
  FROM persons AS p
  JOIN hobbies AS h
  ON p.id = h.person_id
  WHERE p.name = 'Bobby McBobbyFace';
