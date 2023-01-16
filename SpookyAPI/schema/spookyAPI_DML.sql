use ghost_hunters;

insert into graveyard (`name`, street_address, city, state, zip) values
("Pleasantview Cemetery", "210 Wright Way", "Pleasantview", "Minnesota", "55105"),
("Gothier Green Lawns", "150 Maxis Ave", "Sim City", "California", "94601"),
("Strangetown Community Cemetery", "99 Road to Nowhere", "Strangetown", "California", "92372"),
("Capp Memorial Cemetery", "40 Bard Boulevard", "Veronaville", "New Jersey", "08701"),
("Monty Foundation Cemetery", "260 Avon Avenue", "Veronaville", "New Jersey", "08701");

insert into ghost (`name`, age, ghost_type, graveyard_id) values
("Nicolo Lothario", 100, "personality", 1),
("Mama Lothario", 130, "orb", 1),
("Skip Broke", 40, "wisp", 1),
("Fricorith Tricou", 18, "personality", 2),
("Jennicor Tricou", 90, "wisp", 2),
("Jon Smith Tricou", 95, "personality", 2),
("Rainelle Neengia", 30, "poltergeist", 2),
("Earl E. DeMise", 60, "personality", 3),
("Tim Lee DeMise", 50, "poltergeist", 3),
("Lou Thanasia", 35, "orb", 3),
("Ichabod Specter", 101, "personality", 3),
("Melissa Sims", 37, "wisp", 3),
("Caliban Capp", 43, "wisp", 4),
("Cleopatra Capp", 160, "personality", 4),
("Contessa Capp", 93, "orb", 4),
("Cordelia Capp", 38, "poltergeist", 4),
("Claudio Monty", 41, "personality", 5),
("Hero Monty", 49, "wisp", 5),
("Olivia Monty", 31, "orb", 5);

insert into reporter (`name`, phone) values
("Cassandra Goth", "(555)321-9873"),
("Don Lothario", "(555)532-4324"),
("Dirk Dreamer", "(555)254-2032"),
("Brandi Broke", "(555)214-2938"),
("Ophelia Nigmos", "(555)235-1234"),
("Johnny Smith", "(555)241-4903"),
("Consort Capp", "(555)325-4938"),
("Juilet Capp", "(555)352-3945"),
("Patrizio Monty", "(555)293-5932"),
("Romeo Monty", "(555)349-1938");

select * from reporter;

insert into location (`name`, street_address, city, state, zip, `type`) values
("Goth Residence", "165 Sim Lane", "Pleasantview", "Minnesota", "55105", "residential"),
("Lothario Residence", "150 Main Street", "Pleasantview", "Minnesota", "55105", "residential"),
("Pleasantivew Public Pool", "250 Main Street", "Pleasantview", "Minnesota", "55105", "public"),
("Gothier Green Lawns", "150 Maxis Ave", "Sim City", "California", "94601", "graveyard"),
("Wright Residence", "210 Custer Boulevard", "Sim City", "California", "94601", "residential"),
("Specter Residence", "13 Dead End Lane", "Strangetown", "California", "92372", "residential"),
("Strangetown Community Cemetery", "99 Road to Nowhere", "Strangetown", "California", "92372", "graveyard"),
("Capp Manor", "27 Bard Boulevard", "Veronaville", "New Jersey", "08701", "residential"),
("Capp Memorial Cemetery", "40 Bard Boulevard", "Veronaville", "New Jersey", "08701", "graveyard"),
("Monty Foundation Cemetery", "260 Avon Avenue", "Veronaville", "New Jersey", "08701", "graveyard");

insert into sighting (reporter_id, location_id) values
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 4),
(1, 5),
(5, 6),
(6, 6),
(5, 7),
(7, 8),
(8, 8),
(7, 9),
(9, 10),
(10, 10);

insert into ghost_sighting (ghost_id, sighting_id) values
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 6),
(5, 6),
(7, 6),
(8, 7),
(9, 7),
(9, 8),
(10, 8),
(11, 7),
(11, 8),
(12, 9),
(13, 11),
(14, 10),
(15, 10),
(16, 11),
(16, 12),
(17, 13),
(17, 14),
(18, 13),
(19, 14);