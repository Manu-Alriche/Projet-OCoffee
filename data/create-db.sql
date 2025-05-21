CREATE TABLE origine (
  id SERIAL PRIMARY KEY,
  pays VARCHAR(100) NOT NULL
);

CREATE TABLE caracteristique (
  id SERIAL PRIMARY KEY,
  libelle VARCHAR(100) NOT NULL
);

CREATE TABLE cafe (
  id SERIAL PRIMARY KEY,
  reference BIGINT UNIQUE NOT NULL,
  nom VARCHAR(150) NOT NULL,
  description TEXT NOT NULL,
  prix_kg NUMERIC(6,2) NOT NULL,
  disponible BOOLEAN NOT NULL,
  id_origine INTEGER REFERENCES origine(id)
);

CREATE TABLE cafe_caracteristique (
  id_cafe INTEGER REFERENCES cafe(id),
  id_caracteristique INTEGER REFERENCES caracteristique(id),
  PRIMARY KEY (id_cafe, id_caracteristique)
);

INSERT INTO origine (id, pays) VALUES
  (1, 'Brésil'),
  (2, 'Colombie'),
  (3, 'Costa Rica'),
  (4, 'Éthiopie'),
  (5, 'Guatemala'),
  (6, 'Hawaï'),
  (7, 'Indonésie'),
  (8, 'Italie'),
  (9, 'Jamaïque'),
  (10, 'Kenya'),
  (11, 'Nicaragua'),
  (12, 'Panama'),
  (13, 'Pérou'),
  (14, 'Rwanda'),
  (15, 'Tanzanie'),
  (16, 'Vietnam');

INSERT INTO caracteristique (id, libelle) VALUES
  (1, 'Acide'),
  (2, 'Chocolaté'),
  (3, 'Corsé'),
  (4, 'Doux'),
  (5, 'Épicé'),
  (6, 'Fruité');

INSERT INTO cafe (id, reference, nom, description, prix_kg, disponible, id_origine) VALUES
    (1, 100955890, 'Espresso', 'Café fort et concentré préparé en faisant passer de l''eau chaude à travers du café finement moulu.', 20.99, true, 8),
    (2, 100955894, 'Columbian', 'Café moyennement corsé avec une acidité vive et une saveur riche.', 18.75, true, 2),
    (3, 105589090, 'Ethiopian Yirgacheffe', 'Réputé pour son arôme floral, son acidité vive et ses notes de saveur citronnée.', 22.50, true, 4),
    (4, 134009550, 'Brazilian Santos', 'Café doux et lisse avec un profil de saveur de noisette.', 17.80, true, 1),
    (5, 256505890, 'Guatemalan Antigua', 'Café corsé avec des nuances chocolatées et une pointe d''épice.', 21.25, true, 5),
    (6, 295432730, 'Kenyan AA', 'Café complexe connu pour son acidité rappelant le vin et ses saveurs fruitées.', 23.70, true, 10),
    (7, 302932754, 'Sumatra Mandheling', 'Café profond et terreux avec un corps lourd et une faible acidité.', 19.95, true, 7),
    (8, 327302954, 'Costa Rican Tarrazu', 'Café vif et net avec une finition propre et une acidité vive.', 24.50, true, 3),
    (9, 549549090, 'Vietnamese Robusta', 'Café audacieux et fort avec une saveur robuste distinctive.', 16.75, true, 16),
    (10, 582954954, 'Tanzanian Peaberry', 'Acidité vive avec un profil de saveur rappelant le vin et un corps moyen.', 26.80, true, 15),
    (11, 589100954, 'Jamaican Blue Mountain', 'Reconnu pour sa saveur douce, son acidité vive et son absence d''amertume.', 39.25, true, 9),
    (12, 650753915, 'Rwandan Bourbon', 'Café avec des notes florales prononcées, une acidité vive et un corps moyen.', 21.90, true, 14),
    (13, 795501340, 'Panamanian Geisha', 'Café rare aux arômes floraux complexes, une acidité brillante et un profil de saveur distinctif.', 42.00, true, 12),
    (14, 954589100, 'Peruvian Arabica', 'Café équilibré avec des notes de chocolat, une acidité modérée et un corps velouté.', 19.40, false, 13),
    (15, 958090105, 'Hawaiian Kona', 'Café rare au goût riche, une acidité douce et des nuances subtiles.', 55.75, false, 6),
    (16, 691550753, 'Nicaraguan Maragogipe', 'Café avec des notes de fruits, une acidité vive et un corps plein.', 28.60, false, 11);

INSERT INTO cafe_caracteristique (id_cafe, id_caracteristique) VALUES
    (1, 5), -- Espresso - Epicé
    (1, 3), -- Espresso - Corsé
    (2, 1), -- Columbian - Acide
    (3, 4), -- Ethiopian Yirgacheffe - Doux
    (3, 6), -- Ethiopian Yirgacheffe - Fruité
    (4, 4), -- Brazilian Santos - Doux
    (5, 3), -- Guatemalan Antigua - Corsé
    (6, 1), -- Kenyan AA - Acide
    (6, 4), -- Kenyan AA - Doux
    (7, 3), -- Sumatra Mandheling - Corsé
    (8, 1), -- Costa Rican Tarrazu - Acide
    (9, 5), -- Vietnamese Robusta - Epicé
    (10, 3), -- Tanzanian Peaberry - Corsé
    (10, 6), -- Tanzanian Peaberry - Fruité
    (11, 4), -- Jamaican Blue Mountain - Doux
    (12, 6), -- Rwandan Bourbon - Fruité
    (13, 6), -- Panamanian Geisha - Fruité
    (14, 3), -- Peruvian Arabica - Corsé
    (14, 2), -- Peruvian Arabica - Chocolaté
    (15, 4), -- Hawaiian Kona - Doux
    (15, 6), -- Nicaraguan Maragogipe - Fruité
    
   