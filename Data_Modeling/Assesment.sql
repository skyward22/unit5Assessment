Table "animals" {
  "animal_id" int [pk, increment]
  "animal_name" VARCHAR(50)
  "last_name" VARCHAR(50)
  "user_bio" VARCHAR(255)
}

Table "species" {
  "species_id" int [pk, increment]
  "species_name" INT [not null]
  "species_attributes" VARCHAR(250)
}

Table "food" {
  "food_id" int [pk, increment]
  "food_type" VARCHAR(400)
  "food_animal" INT [not null]
  "food_time" VARCHAR(200)
  "food_serving_size" VARCHAR(300)
}

Table "groceries" {
  "grocery_id" int [pk, increment]
  "grocery_food" VARCHAR(1000) [not null]
  "grocery_animal" INT [not null]
}

Ref:"animals"."animal_id" < "species"."species_name"

Ref:"animals"."animal_id" < "food"."food_animal"

Ref:"food"."food_type" < "groceries"."grocery_food"

Ref:"animals"."animal_id" < "groceries"."grocery_animal"