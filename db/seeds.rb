# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# test user
test_user = User.create(
  name: "Test User",
  username: "test_user",
  password_digest: "test",
  avatar_url: "test_avatar",
  email: "test@gmail.com",
  notification: false,
)

# sample plants
pothos = Plant.create(
  name: "Pothos",
  notes: "Let soil dry out completely between waterings. Suddenly pale leaves means it is getting too much sun. Toxic to pets.",
  water_frequency: 5,
  image_url: "https://cdn.shopify.com/s/files/1/0151/1650/1046/products/Epipremnum_aureum_golden_pothos_indoor_pot_plant_new_zealand_haning_2400x.jpg?v=1568591798",
)

dragon = Plant.create(
  name: "Dragon Plant",
  notes: "Let top soil dry out completely between waterings. If the leaves are yellow, it probably needs more water. If dry, spray with mist. Toxic to pets.",
  water_frequency: 7,
  image_url: "https://www.houseplantsexpert.com/image-files/Dracaena-marginata.jpg",
)

snake = Plant.create(
  name: "Snake Plant",
  notes: "Let dry out between waterings. Prefers indirect sunlight.",
  water_frequency: 12,
  image_url: "https://www.whiteflowerfarm.com/mas_assets/cache/image/3/e/0/4/15876.Jpg",
)

sugar_vine = Plant.create(
  name: "Sugar Vine",
  notes: "Prefers bright indirect or direct light. Toxic to pets.",
  water_frequency: 4,
  image_url: "https://cdn.shopify.com/s/files/1/1714/1265/products/Sugar_vine_6_-2.jpg?v=1534636370",
)

corn = Plant.create(
  name: "Corn Plant",
  notes: "Prefers indirect light. Mist frequently or use a humidifier. Toxic to pets.",
  water_frequency: 7,
  image_url: "https://cdn.shopify.com/s/files/1/0062/8532/8445/products/Dracaena_Corn_Plant_BB_grande.jpg?v=1576090064",
)

ginseng = Plant.create(
  name: "Ginseng",
  notes: "Prefers indirect light. Never allow the soil to become completely dry. Fertilize once a month with liquid fertilizer.",
  water_frequency: 7,
  image_url: "https://q7i2y6d5.stackpathcdn.com/wp-content/uploads/2019/01/bonsai-ginseng.jpg",
)

air = Plant.create(
  name: "Air Plant",
  notes: "Mist once a week in the mornings and let dry out in the sun. Once a month, soak for 10 minutes and then let it dry completely. Prefers indirect, bright light.",
  water_frequency: 7,
  image_url: "https://cdn.gardenista.com/wp-content/uploads/2019/01/tillandsia-harrisii-air-plant-air-plant-design-studio.jpg",
)

jade = Plant.create(
  name: "Jade Plant",
  notes: "Prefers direct sunlight. Adjust watering frequency according to season, soil should be dry between waterings. Leaves falling means it needs more water.",
  water_frequency: 7,
  image_url: "https://images.crateandbarrel.com/is/image/Crate/PottedJadePlantSHF16",
)

spider = Plant.create(
  name: "Spider Plant",
  notes: "During Summer, don't let soil dry out.",
  water_frequency: 7,
  image_url: "https://bloomscape.com/wp-content/uploads/2019/05/bloomscape-product-spider-plant-indigo-2.jpg",
)

money = Plant.create(
  name: "Chinese Money Plant",
  notes: "Prefer indirect light.",
  water_frequency: 7,
  image_url: "https://cdn.shopify.com/s/files/1/0847/2842/products/Pilea-Money-Plant-Highgate-Flowers_grande.jpg?v=1561023156",
)

# create test relationships
UsersPlant.create(
  user_id: test_user.id,
  plant_id: pothos.id,
)

UsersPlant.create(
  user_id: test_user.id,
  plant_id: dragon.id,
)

puts "Seeded"
