SELECT ANIMAL_TYPE,
       COUNT(ANIMAL_ID) count
FROM animal_ins
GROUP BY animal_type
ORDER BY FIELD(animal_type, 'Cat', 'Dog');