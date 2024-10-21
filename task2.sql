UPDATE petPet
SET death = "2020-09-01"
WHERE petName = "Puffball";

INSERT INTO petPet (petname, owner, species, gender, birth, death)
    VALUES ("Hammy", "Diane", "hamster", "M", "2010-10-30", NULL);

INSERT INTO petEvent (petname, eventdate, eventtype, remark)
    VALUES ("Fluffy", "2020-10-15", "vet", "antibiotics"),
            ("Hammy", "2020-10-15", "vet", "antibiotics");

UPDATE petEvent
SET remark = "5 kittens 2 male, 3 female"
WHERE petName = "Fluffy" AND eventtype = "litter";

UPDATE petEvent
SET petName = "Claws"
WHERE remark = "broken rib" AND eventdate = "1997-08-03";

DELETE FROM petEvent WHERE petname = "Buffy"
DELETE FROM petPet WHERE petname = "Buffy"


