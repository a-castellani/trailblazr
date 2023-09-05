# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activity.destroy_all
activities = [
  {
    country: "Egypt",
    activity: "Culture",
    days: 9,
    title: "Nile Cruise",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/gettyimages-136966566.jpg",
    booking_url: "",
    prices_from: 1499,
    description_title: 'Discover ancient temples and tombs and travel by Nile cruise boat',
    description: 'Egypt has an enthralling history and a wealth of well-preserved monuments and treasures. This trip allows you to visit all the major sites and attractions along the Nile in a comfortable fashion. Boarding our cruise boat at Luxor we travel upstream, watching local life pass, while also visiting the spectacular Edfu and Kom Ombo temples along the way. The lush banks and beautiful sunsets over the Nile, together with the excellent onboard facilities, make this an unforgettable way to travel.'
  },
  {
    country: "Jordan",
    activity: "Culture",
    days: 9,
    title: "A Week in Jordan",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/06/petra.jpg",
    booking_url: "https://www.exodus.co.uk/trips/egypt-holidays/culture/nile-cruise/aena",
    prices_from: 1299,
    description_title: 'Visit the stunning highlights of Jordan',
    description: 'Jordan is an ideal destination for a one-week adventure. Bursting with things to see and do, this trip includes the best of what this magnificent country has to offer, visiting all the major sites of interest. We will have two full days to explore Petra and take a guided visit around Jerash, one of the best-preserved Roman cities in the Middle East. We’ll float in the salty waters of the Dead Sea and snorkel (optional) over the beautiful coral reefs of the Red Sea. We will also experience the fabulous desert scenery at Wadi Rum, taking a four-wheel-drive vehicle into the more remote regions, and camp out like the Bedouin.'
  },
  {
    country: "Italy",
    activity: "Trekking",
    days: 8,
    title: "Walking the Amalfi Coast",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/thinkstockphotos-486662794.jpg",
    booking_url: "https://www.exodus.co.uk/trips/sicily/walking/walking-amalfi-coast/tda",
    prices_from: 1299,
    description_title: 'Discover the highlights of Italy’s Amalfi Coast on foot',
    description: 'The Amalfi Coast is one of the most dramatic coastlines in Europe. Mountains jut steeply out of the Mediterranean and picturesque towns nestle in the coves below. Walking the ancient hillsides, which are studded with lemon groves and framed by deep gorges, we descend from the Agerola Plain to the quaint towns of Positano, Ravello and Amalfi itself. No visit to the Bay of Naples would be complete without a trip to see the remains of Pompeii under the imposing volcanic cone of Mount Vesuvius. The highlight of this Amalfi Coast guided walking is arguably the best coastal walk in the world: the Path of the Gods. Away from the trails we take part in a traditional pastime and sample incredible food and wine just like the Italians do.'
  },
  {
    country: "Costa Rica",
    activity: "Wildlife",
    days: 15,
    title: "Discover Costa Rica - with Dominical",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/12/Hero_NatureWildlife1.jpg",
    booking_url: "https://www.exodus.co.uk/trips/costa-rica-holidays/wildlife/discover-costa-rica-dominical/wucb",
    prices_from: 3399,
    description_title: 'Experience the rainforest, mountains and coast of this tropical paradise',
    description: 'Costa Rica is renowned for having proportionately more protected land than any other country, making it ripe for wildlife tourism. What is less known is the marvellous, often bizarre, variety of animals from catatonic sloths, screaming howler monkeys, screeching toucans and nesting green turtles. Throw in the Caribbean and Pacific coastlines and it is easy to see why so many return.

    This itinerary differs from Discover Costa Rica, spending two nights at Dominical instead of Piedras Blancas. This option is a great alternative as this area has much to offer: beautiful beaches with great sunset views, waterfalls and natural swimming holes, and the chance to explore nearby Marino Ballena National Park.'
  },
  {
    country: "Costa Rica",
    activity: "Wildlife",
    days: 15,
    title: "Discover Costa Rica",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/discover_costa_rica.jpg",
    booking_url: "https://www.exodus.co.uk/trips/costa-rica-holidays/wildlife/discover-costa-rica/wuc",
    prices_from: 3099,
    description_title: 'Experience the rainforest, mountains and coast of this tropical paradise',
    description: 'Costa Rica is renowned for having proportionately more protected land than any other country, making it ripe for wildlife tourism. What is less known is the marvellous, often bizarre, variety of animals from catatonic sloths, screaming howler monkeys, screeching toucans and nesting green turtles. Throw in the Caribbean and Pacific coastlines and it is easy to see why so many return.

    This trip includes a few of our Citizen Science Departures. These special departures offer you the opportunity to be involved in the collection of freshwater samples during the trip. The environmental DNA information derived from this sample will contribute directly to the eBioAtlas; the world’s largest repository of flora and fauna species data, contributing to the conservation and restoration of biodiversity both locally and globally.'
  },
  {
    country: "Italy",
    activity: "Trekking",
    days: 8,
    title: "Classic Dolomites - Premium Adventure",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/03/PA-Hero-single-Dolomites-V2-TWU2.jpg",
    booking_url: "https://www.exodus.co.uk/trips/italy-holidays/premium-adventures/classic-dolomites-premium-adventure/twu2",
    prices_from: 1449,
    description_title: 'Trek through the Italian Dolomites',
    description: 'EThe traditional village of Villabassa in South Tyrol lies close to the Austrian border, surrounded by the unmistakably jagged peaks of the Dolomites. Here, spectacular scenery meets the fiercely proud Tyrolean heritage. Our home for the week, the Hotel Adler, epitomises this, housing a wonderful spa and renowned restaurant within 400-year-old walls.

    The walking is diverse and memorable as we venture into the Fanes-Sennes and Dolomiti di Sesto National Parks for great views of the Tre Cime di Lavaredo and the open-air museums that dot the landscape reflect the area’s history as the frontline between Italy and the Austro-Hungarian Empire in the first world war.'
  },
  {
    country: "Vietnam",
    activity: "Culture",
    days: 14,
    title: "Vietnam Adventure",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/36865_hero.jpg",
    booking_url: "https://www.exodus.co.uk/trips/vietnam-holidays/culture/vietnam-adventure/aov",
    prices_from: 1245,
    description_title: 'Discover North and South Vietnam',
    description: 'This trip encapsulates the magic of Vietnam: the conservative north, the rich heritage of the imperial cities, coastal scenery and the vibrant life of Ho Chi Minh City, formerly Saigon, and the Mekong Delta. We come face to face with an outgoing culture, where so much goes on in the streets: eating, washing, socialising, buying and selling or impromptu games. This intoxicating parade of Vietnamese life may leave us with our strongest memories, as much as the superb landscapes and amazing cuisine.'
  },
  {
    country: "France",
    activity: "Trekking",
    days: 8,
    title: "Mont Blanc Highlights",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2014/10/Group-walk-Mont-Blanc.jpg",
    booking_url: "https://www.exodus.co.uk/trips/france-holidays/walking/mont-blanc-highlights/twn",
    prices_from: 1299,
    description_title: 'Beautiful alpine walking on the best of the Mont Blanc Circuit',
    description: 'The Mont Blanc Circuit is one of the finest walking routes in the Alps. It is a series of paths linking the seven valleys that surround the highest mountain in western Europe, Mont Blanc. It normally takes two weeks to complete, but if you have less time, this one-week tour takes in the most outstanding sections with beautiful mountain highlights each day. Throughout this walking holiday, we are based in a delightful chalet with comfortable living areas (inside and out) and delicious, home-cooked meals. We use a mix of private bus and local trains/buses to travel out each day to rejoin the next stage of our walk. At the end of each day, we return home for afternoon tea and, for those who wish, a dip in the chalet’s bubbling hot tub.'
  },
  {
    country: "Italy",
    activity: "Culture",
    days: 8,
    title: "RCGS: Highlights of the Amalfi Coast with Scott Forsyth",
    image_url: "https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/gettyimages-1095679642.jpg",
    booking_url: "https://www.exodus.co.uk/trips/italy-holidays/culture/rcgs-highlights-of-amalfi-coast-scott-forsyth/avgr",
    prices_from: 199,
    description_title: 'Discover one of the most fascinating and romantic destinations in the world accompanied by renowned RCGS photographer Scott Forsyth',
    description: 'Discover la dolce vita with a wondrous week on the Amalfi Coast led by an expert local guide and hosted by professional photographer and fellow of the Royal Canadian Geographical Society, Scott Forsyth. Explore one of the most dramatic stretches of coastline in Europe and be spellbound by the natural beauty and cultural treasures of this land!'
  }
]

activities.each do |activity|
  Activity.create(name: activity[:title], location: activity[:country], duration: activity[:days], price: activity[:prices_from], category: activity[:activity], image_url: activity[:image_url], description_title: activity[:description_title], description: activity[:description])
end
