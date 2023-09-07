# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
User.destroy_all
Itinerary.destroy_all
Selection.destroy_all
# activities = [
#   {
#     country: 'Egypt',
#     activity: 'Culture',
#     days: 9,
#     title: 'Nile Cruise',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/gettyimages-136966566.jpg',
#     booking_url: ',
#     prices_from: 1499,
#     description: 'Egypt has an enthralling history and a wealth of well-preserved monuments and treasures. This trip allows you to visit all the major sites and attractions along the Nile in a comfortable fashion. Boarding our cruise boat at Luxor we travel upstream, watching local life pass, while also visiting the spectacular Edfu and Kom Ombo temples along the way. The lush banks and beautiful sunsets over the Nile, together with the excellent onboard facilities, make this an unforgettable way to travel.'
#   },
#   {
#     country: 'Jordan',
#     activity: 'Culture',
#     days: 9,
#     title: 'A Week in Jordan',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/06/petra.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/egypt-holidays/culture/nile-cruise/aena',
#     prices_from: 1299,
#     description: 'Jordan is an ideal destination for a one-week adventure. Bursting with things to see and do, this trip includes the best of what this magnificent country has to offer, visiting all the major sites of interest. We will have two full days to explore Petra and take a guided visit around Jerash, one of the best-preserved Roman cities in the Middle East. We'll float in the salty waters of the Dead Sea and snorkel (optional) over the beautiful coral reefs of the Red Sea. We will also experience the fabulous desert scenery at Wadi Rum, taking a four-wheel-drive vehicle into the more remote regions, and camp out like the Bedouin.'
#   },
#   {
#     country: 'Italy',
#     activity: 'Trekking',
#     days: 8,
#     title: 'Walking the Amalfi Coast',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/thinkstockphotos-486662794.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/sicily/walking/walking-amalfi-coast/tda',
#     prices_from: 1299,
#     description: 'The Amalfi Coast is one of the most dramatic coastlines in Europe. Mountains jut steeply out of the Mediterranean and picturesque towns nestle in the coves below. Walking the ancient hillsides, which are studded with lemon groves and framed by deep gorges, we descend from the Agerola Plain to the quaint towns of Positano, Ravello and Amalfi itself. No visit to the Bay of Naples would be complete without a trip to see the remains of Pompeii under the imposing volcanic cone of Mount Vesuvius. The highlight of this Amalfi Coast guided walking is arguably the best coastal walk in the world: the Path of the Gods. Away from the trails we take part in a traditional pastime and sample incredible food and wine just like the Italians do.'
#   },
#   {
#     country: 'Costa Rica',
#     activity: 'Wildlife',
#     days: 15,
#     title: 'Discover Costa Rica - with Dominical',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/12/Hero_NatureWildlife1.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/costa-rica-holidays/wildlife/discover-costa-rica-dominical/wucb',
#     prices_from: 3399,
#     description: 'Costa Rica is renowned for having proportionately more protected land than any other country, making it ripe for wildlife tourism. What is less known is the marvellous, often bizarre, variety of animals from catatonic sloths, screaming howler monkeys, screeching toucans and nesting green turtles. Throw in the Caribbean and Pacific coastlines and it is easy to see why so many return.

#     This itinerary differs from Discover Costa Rica, spending two nights at Dominical instead of Piedras Blancas. This option is a great alternative as this area has much to offer: beautiful beaches with great sunset views, waterfalls and natural swimming holes, and the chance to explore nearby Marino Ballena National Park.'
#   },
#   {
#     country: 'Costa Rica',
#     activity: 'Wildlife',
#     days: 15,
#     title: 'Discover Costa Rica',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/discover_costa_rica.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/costa-rica-holidays/wildlife/discover-costa-rica/wuc',
#     prices_from: 3099,
#     description: 'Costa Rica is renowned for having proportionately more protected land than any other country, making it ripe for wildlife tourism. What is less known is the marvellous, often bizarre, variety of animals from catatonic sloths, screaming howler monkeys, screeching toucans and nesting green turtles. Throw in the Caribbean and Pacific coastlines and it is easy to see why so many return.

#     This trip includes a few of our Citizen Science Departures. These special departures offer you the opportunity to be involved in the collection of freshwater samples during the trip. The environmental DNA information derived from this sample will contribute directly to the eBioAtlas; the world's largest repository of flora and fauna species data, contributing to the conservation and restoration of biodiversity both locally and globally.'
#   },
#   {
#     country: 'Italy',
#     activity: 'Trekking',
#     days: 8,
#     title: 'Classic Dolomites - Premium Adventure',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2022/03/PA-Hero-single-Dolomites-V2-TWU2.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/italy-holidays/premium-adventures/classic-dolomites-premium-adventure/twu2',
#     prices_from: 1449,
#     description: 'EThe traditional village of Villabassa in South Tyrol lies close to the Austrian border, surrounded by the unmistakably jagged peaks of the Dolomites. Here, spectacular scenery meets the fiercely proud Tyrolean heritage. Our home for the week, the Hotel Adler, epitomises this, housing a wonderful spa and renowned restaurant within 400-year-old walls.

#     The walking is diverse and memorable as we venture into the Fanes-Sennes and Dolomiti di Sesto National Parks for great views of the Tre Cime di Lavaredo and the open-air museums that dot the landscape reflect the area's history as the frontline between Italy and the Austro-Hungarian Empire in the first world war.'
#   },
#   {
#     country: 'Vietnam',
#     activity: 'Culture',
#     days: 14,
#     title: 'Vietnam Adventure',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/36865_hero.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/vietnam-holidays/culture/vietnam-adventure/aov',
#     prices_from: 1245,
#     description: 'This trip encapsulates the magic of Vietnam: the conservative north, the rich heritage of the imperial cities, coastal scenery and the vibrant life of Ho Chi Minh City, formerly Saigon, and the Mekong Delta. We come face to face with an outgoing culture, where so much goes on in the streets: eating, washing, socialising, buying and selling or impromptu games. This intoxicating parade of Vietnamese life may leave us with our strongest memories, as much as the superb landscapes and amazing cuisine.'
#   },
#   {
#     country: 'France',
#     activity: 'Trekking',
#     days: 8,
#     title: 'Mont Blanc Highlights',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2014/10/Group-walk-Mont-Blanc.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/france-holidays/walking/mont-blanc-highlights/twn',
#     prices_from: 1299,
#     description: 'The Mont Blanc Circuit is one of the finest walking routes in the Alps. It is a series of paths linking the seven valleys that surround the highest mountain in western Europe, Mont Blanc. It normally takes two weeks to complete, but if you have less time, this one-week tour takes in the most outstanding sections with beautiful mountain highlights each day. Throughout this walking holiday, we are based in a delightful chalet with comfortable living areas (inside and out) and delicious, home-cooked meals. We use a mix of private bus and local trains/buses to travel out each day to rejoin the next stage of our walk. At the end of each day, we return home for afternoon tea and, for those who wish, a dip in the chalet's bubbling hot tub.'
#   },
#   {
#     country: 'Italy',
#     activity: 'Culture',
#     days: 8,
#     title: 'RCGS: Highlights of the Amalfi Coast with Scott Forsyth',
#     image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_500,h_303,c_lfill,g_auto/exodus-web/2021/12/gettyimages-1095679642.jpg',
#     booking_url: 'https://www.exodus.co.uk/trips/italy-holidays/culture/rcgs-highlights-of-amalfi-coast-scott-forsyth/avgr',
#     prices_from: 199,
#     description: 'Discover la dolce vita with a wondrous week on the Amalfi Coast led by an expert local guide and hosted by professional photographer and fellow of the Royal Canadian Geographical Society, Scott Forsyth. Explore one of the most dramatic stretches of coastline in Europe and be spellbound by the natural beauty and cultural treasures of this land!'
#   }
# ]

activities = [
  {
  name: 'Full-day sea kayaking; find out how the Turquoise Coast got its name' ,
  location: 'Lycian',
  duration: 1,
  category:'kayaking' ,
  description: 'Today we spend a full day sea kayaking in the sheltered bay near Kekova Island. We start early, departing at 7.30am for a transfer (approximately 50 minutes) to Ucagiz village. After preparations and a technical briefing, we paddle towards the island and the site of a sunken city. Although it is no Atlantis, you can clearly make out the harbour walls and see the layout of rooms and houses below the water. Kayaking is an excellent low-impact way of exploring the site. Later, we paddle to the village of Simena for lunch. This spectacular spot is on a peninsula and is inaccessible by road. The village is overlooked by a hilltop Ottoman castle with excellent views of the whole bay. To participate, you must be able to swim and have the physique necessary to fit in the kayak.' ,
  tags: ['adventure'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/38533_hero.jpg',
  number_of_people: 20
  },
  {
  name:  'Cycle to Ballydavid and on to Brandon Creek',
  location: 'Ireland',
  duration: 1,
  category: 'cycling' ,
  description: 'Cycle west from Dingle via Ventry to Slea Head, with magnificent views and breath taking views across the Blasket Sound to the famous Blasket Island. Continue to Dunquinn and Ballyferriter before returning to Dingle. Alternatively, from Dunquinn harbour take the ferry (pay locally) to Great Blasket Island to explore this mystical and enchanting place. ',
  tags: ['adventure'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/46678_hero.jpg',
  number_of_people: 20
  },
  {
  name: 'Canoeing on the Dordogne',
  location: 'France',
  duration: 1,
  category: 'canoeing',
  description: "we take you upstream to the small hamlet of Thezel, just south of Beaulieu-sur-Dordogne for the briefing and canoeing lesson. Then it's an easy paddle down to Carennac. This is one of the Dordogne's most picturesque villages, with lovely 16th century houses",
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/france_dordogne_kayaking-on-the-dord-m08do.jpg',
  number_of_people: 18
  },
  {
  name: 'Cycle around glorious West Lake',
  location: 'Vietnam' ,
  duration:1 ,
  category: 'cycling',
  description: "After lunch, you'll pick up bikes before cycling to Ho Tay, the city's largest lake, to bike 15 miles around its circumference.  The ride provides a glimpse into modern and traditional Vietnamese life as fishermen wait for a catch and luxury rooftop restaurants compete for space. You'll stop at one of the many cafes to sip on delicious Vietnamese coffee and enjoy the lakeside views.",
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/39439.jpg',
  number_of_people: 16
  },
  {
  name: 'High atlas mountain ride',
  location: 'Morocco',
  duration: 1,
  category: 'cycling',
  description: 'we arrive at the small village of Tiqqi in the foothills of the High Atlas. The landscape here is very different with pine and cedar forests and remote mountainside villages dominating the area. Initially, our track leads past several untouched Amazigh villages, where mud houses perch precariously under cliff edges and local people look on as we cycle through. After lunch, the track becomes slightly rockier as we come to a spectacular gorge; we have time to admire the views and contemplate the two afternoon climbs, before our final fast-flowing cross-country ride down. Rejoining the paved route, we cycle downhill for the last stretch to our hotel in Immouzer',
  tags: ['adventure', 'cycling'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/37630.jpg',
  number_of_people: 12
  },
  {
  name: 'Sea kayaking in Göcek',
  location: 'Turkey',
  duration: 1,
  category: 'kayaking',
  description: 'Today begins with a safety briefing and basic exercises to get used to the kayaks. Then we set off to paddle along the Turquoise Coast, visiting bays and coves with swimming stops. The route is flexible and depends on the conditions at the time, but in general this is the perfect place to learn the joys of paddling.

  Our course should include interesting spots such as Cleopatra’s Bath, a beautiful bay with the ruins of a Roman baths said to have been built for the Egyptian queen, as well as quieter areas away from the yachties. Lunch is a picnic. In the late afternoon, we return to our base.',
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2023/05/ATK-4.jpg',
  number_of_people: 16
  },
  {
  name: 'Visit Jerash then Amman city tour',
  location: 'Jordan Decapolis',
  duration: '5 h',
  category: 'walking',
  description: "This morning we drive north to the ruined city of Jerash, known as Gerasa in ancient times, which is awash with imposing colonnades, ancient temples and theatres. This was one of the 10 wealthy, self-governing cities of the Decapolis during Roman times, and was famous throughout the Roman world for its affluent lifestyle. Buried for centuries under blown sand, Jerash is the only city of the Decapolis to have survived, with a dramatic oval forum, colonnaded main streets which remarkably have the drains still intact, two theatres and the impressive Temple of Zeus.
  After a good look around, we head back to Amman for an exciting city tour, where we'll visit notable ancient sites such as the Citadel, Roman Theatre and the old city. Take in the striking views of the capital of the Kingdom of Jordan from the heady heights of the Citadel complex.",
  image_url:
  'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2022/02/PA-Hero-single-Jordan-AXM-1.jpg',
  number_of_people: 16,
  tags:['culture']
  },
  {
  name: 'Circular walk in the heartland of the Prosecco region; visit one of the best local producers for wine tasting and learn about the wine-making process',
  location: 'Italy Prosecco region',
  duration: '5 h',
  category: 'wine & walking',
  description: "Today's walk takes us to the heartland of the Prosecco Hills, namely Valdobbiadene, San Pietro di Barbozza and San Stefano. The majority of the winemakers are based right here, among the steep terraced hills, which are arguably the prettiest in the Veneto region. Our walk follows a mix of human-made tracks and paths twisting through the vineyards, and offers spectacular views of the fertile landscape and hillside hamlets. During the walk we will have the opportunity to visit the Pietrovecchio winery, one of the top local prosecco producers. After a general introduction to the winery and its history, we can sample different varieties of prosecco during a guided wine-tasting (included)." ,
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/gettyimages-955545728-1.jpg',
  number_of_people: 16,
  tags:['culture']
  },
  {
  name: 'Walk to Caños Santos Monastery; walk to the white village of Setenil',
  location: 'Andalucía',
  duration: '6 h',
  category: 'trekking',
  description: 'Today we set out from Cortijo Rosario, walking through Algamitas farmland to the abandoned monastery of Caños Santos, where we will have lunch. In the afternoon, follow the Ruta de los Molinos along the river that runs through the white village of Setenil de las Bodegas. Built under the overhanging ledge of a gorge, Setenil is not only known for having standout architecture but also for bars, restaurants and food shops, which are the best in the region. We have free time to discover Setenil and later return to the cortijo by private minibus.
  Distance 12km; Ascent: 902ft (275m); descent: 902ft (275m); approximately five to six hours walking including stops
  Meals included: Breakfast, Lunch, Dinner',
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/25747.jpg',
  number_of_people: 15,
  tags:['culture']
  },
  {
  name: 'Transfer to Hurghada; submarine ride and snorkelling in Red Sea',
  location: 'Egypt',
  duration: '6 h',
  category: 'submarine ride and snorkelling',
  description: 'This morning, we leave the green Nile valley and drive through the barren Eastern Desert to the Red Sea (approximately four hours). Our destination is Hurghada, a vibrant beach resort ideally located for activities out at sea and in the nearby desert. After lunch, we board a semi-submersible vessel in the style of a yellow submarine and explore the coral wonderland beneath the surface of the Red Sea. There is also time for snorkelling before returning to dry land.
  Accommodation: Sea Star Beau Rivage (or similar)
  Meals included: Breakfast, Lunch, Dinner',
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/30172-1.jpg',
  number_of_people: 20,
  tags:['family', "adventure"]
  },
  {
  name: 'Dogsledding instruction and tour in Riisitunturi National Park',
  location: 'Finland',
  duration: '5 h',
  category: 'dogsledding',
  description: 'This morning, we head to a husky farm on the edge of the neighbouring Riisitunturi National Park. We start with tuition on how to ride and drive the sled and the importance of caring for the huskies correctly. We then continue into the woods where our dog teams eagerly await our arrival, ready to take us on our 6mi (10km) mushing adventure. With the adults driving and the children sitting in the sled, we appreciate the serenity of this snow-laden landscape.
  Meals included: Breakfast, Lunch, Dinner',
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/04374.jpg',
  number_of_people: 18,
  tags:['family']
  },
  {
  name: 'Waterberg Plateau',
  location: 'Namibia',
  duration: '2 h',
  category: 'walking',
  description: 'This morning, we drive to the gigantic Waterberg Plateau, a 655ft (200m) high plateau covered with bushveld. It is one of the more fertile areas in Namibia and very colourful, especially after the rains. Here, there are several walking trails, including one leading to a spectacular viewpoint near the top of the plateau for a great view. In addition to a guided walk, there are many smaller walks to explore without a guide.
  Drive: 75mi (120km), two hours
  Accommodation: NWR Waterberg Lodge (or similar)
  Meals included: Breakfast',
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/46262-1.jpg',
  number_of_people: 14,
  tags:['family']
  },
  {
  name: 'Optional balloon ride; walk to Zemi valley',
  location: 'Turkey',
  duration: 1,
  category: 'walking',
  description: ' Take part in the most iconic activity in Cappadocia – an early morning hot-air balloon ride then we have a short transfer before we start our trek in Zemi valley. The path leads us through orchards and mesmerising tunnels to a panoramic viewpoint, where we meet our bus and drive to Ayvalı. In the afternoon, we have a short walk through the Gomede Valley from Ayvalı to Mustafapaşa village where we stop for tea in a cafe. Mustafapaşa used to be one of the richest towns in Anatolia until the 1924 population exchange, which forced the Greeks living in Turkey to move to Greece and vice versa. You can spot the Greek influence in some of the architecture',
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2022/05/hybris-40005.jpg',
  number_of_people: 16
  },
  {
  name: 'Walking the Summit of Peña Main ',
  location: 'Spain',
  duration:1 ,
  category: 'walking',
  description: 'Starting close to the village of Tieve, we walk up into the Main range and summit Peña Main, one of the classic viewpoints in the Picos. We walk to Collado de Pandebano and then begin our descent.',
  tags: ['adventure', 'walking'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/45390.jpg',
  number_of_people: 15
  },
  {
  name: 'Everest Base Camp Trek',
  location: 'Nepal',
  duration: 1,
  category: 'walking',
  description: 'Today is a very long, hard day as we leave very early, following the Khumbu Glacier northwards to Gorak Shep (17,008ft/5,184m). The trail undulates along the moraine with some short, steep sections. The trail is rocky as we are now on the lateral moraine of the Khumbu Glacier. It will take us about three hours to reach Gorak Shep, where we have a rest and something to eat. There are no lodges from here to Everest Base Camp and back, so we fill our water bottles and take snacks.
  We start by walking across the sandy flat at Gorak Shep and climb onto the lateral moraine of the Khumbu Glacier. The trail ascends the side of the glacier for a couple of hours before finally descending onto the rocky glacial moraine itself. The trail winds up and down through fascinating ice seracs to the area known as Everest Base Camp, where in spring, we might see expedition teams in the distance as they prepare to climb the mountain. From Base Camp, we get close-up views of the Khumbu Ice Fall and we can appreciate just how difficult it is for climbers to negotiate through the huge ice blocks. After a short photo stop by the Base Camp rock, we retrace our steps to Gorak Shep
  ',
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/39821-3.jpg
  ',
  number_of_people: 16
  },
  {
  name: 'Mt Toubkal Climb',
  location: 'Morrocco',
  duration: 1,
  category: 'walking',
  description: 'We make an early start from basecamp for the ascent of Mount Toubkal, climbing steeply through scree before traversing the southern ridge to reach the summit at 13,671ft (4,167m). After enjoying magnificent panoramas, we descend to basecamp. We have the rest of the afternoon free to reflect on our achievement.',
  tags: ['adventure'],
  image_url:'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/44048.jpg',
  number_of_people: 16
  },
  {
  name: 'Morning at the Pyramids and Great Sphinx of Giza; optional visit to the Egyptian Museum',
  location: 'Pyramids, Egipt',
  duration: 3 ,
  category: 'walking',
  description: "Today we enjoy a half-day sightseeing tour of two ancient wonders. At Giza, the enigmatic Sphinx and Great Pyramids stand on the edge of the empty desert overlooking the city, providing a great contrast between ancient and modern Egypt. More than 4,000 years old, the pyramids are a testimony to the ingenuity and skill of their builders; in fact, the Great Pyramid, the largest of the pyramids here, is the only Wonder of the Ancient World that still stands.
  The afternoon is free to relax at our hotel, explore Cairo, join an optional excursion to Saqqara, Memphis and Dahshur, or visit the Egyptian Museum – home to the largest collection of ancient Egyptian artefacts in the world, including the incredible golden riches of Tutankhamun's tomb." ,
  tags: ['family'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/gettyimages-1165153015-1.jpg',
  numer_of_people: 6
  },
  {
  name: "Drive to the head of the Chamonix Valley; walk towards Switzerland via the trekking peak L'Aiguillette des Posettes and on to Col du Possettes and then descend back towards La Tour",
  location: 'France',
  duration: 6,
  category: 'walking',
  description: "Our first walk of the week is on the slopes of the Col de Balme from where we will have views back to Mont Blanc and into Switzerland. From the small hamlet of Montroc we have a short warm-up walk before the trail turns uphill on a steady zigzag path. As the trees thin, the views get even better and by late morning we reach L'Aiguillette des Posettes (7,220ft/2,200m). This is a peak from which we are rewarded with a panorama over the Chamonix Valley, the Aiguilles Rouges National Nature Reserve, and around to Switzerland. The path continues down to the Col des Posettes and then on a steady trail becoming ever more winding and finally down to La Tour.",
  tags: ['family'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2014/10/Group-walk-Mont-Blanc.jpg',
  number_of_people: 6
  },
  {
  name: 'Full day to visit the impressive sites of Pompeii and Vesuvius' ,
  location: 'Pompei, Italy',
  duration: 8 ,
  category: 'walking',
  description: 'Today we descend from the Agerola hills and take a transfer (approximately 45 minutes) to Pompeii, once a thriving port town until the catastrophic eruption of Vesuvius spanning two days in 79 CE, during which the city was buried in ash and pumice. Lost for 1,700 years, Pompeii is now a Unesco World Heritage site as the perfectly preserved remains give us an amazing insight into life in a Roman city, complete with bathhouses, bakeries and homes – some of which still have walls adorned with detailed frescoes. You may take time to explore the site independently but we recommend opting for a detailed tour accompanied by a local guide, which can be hired locally for approximately €10 per person depending on the group size.
  In the afternoon, we head to the famous volcano that looms over Naples, Mount Vesuvius. The vehicle will take you to an altitude of approximately 3,280ft (1,000m) and from there to the crater you will need to ascend on a path which is approximately 490ft (150m) long and quite steep in places. A local guide will then take you on a short walk along the crater rim, while explaining the fascinating history of Vesuvius and its volcanic activity. We return to the hotel by bus in the late afternoon.
  Please note, during adverse weather conditions, such as fog, storms or heavy rain, the local authorities may decide to restrict or prevent access to Vesuvius. In the event this inclusion cannot be offered on your departure, we will take you to Herculaneum to visit its perfectly preserved remains and virtual museum, which give an amazing insight into the life of an ancient Roman city.
  ' ,
  tags: ['family'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2022/05/microsoftteams-image_2-1.png',
  number_of_people: 6
  },
  {
  name: 'Four game drives over in Pench National Park' ,
  location: 'Pench National Park',
  duration: 10 ,
  category: 'walking',
  description: "Spend one day exploring Pench National Park in the lower southern reaches of the Satpuda hills. It provided inspiration for Rudyard Kipling's The Jungle Book and marks our first chance to see our very own Shere Khan.
  This designated tiger reserve is home to around 45 Bengal tigers, plus leopards, wolves, monkeys, deer, and nilgai (the largest antelope in Asia). Our two days include four game drives, in which we'll keep our eyes peeled for the incredible creatures that live here.",
  tags: ['safari'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/46308.jpg',
  number_of_people: 10
  },
  {
  name: 'Full day in Murchison Falls National Park',
  location: 'Murchison Falls National Park',
  duration: 8,
  category: 'walking',
  description: "We have an early morning game drive in Murchison Falls National Park. We transfer by ferry to the north side of the Nile where we embark on our game drive. The area is home to elephants, giraffes, buffalo and Ugandan kobs, plus the predators: lions and leopards. After lunch, we travel by boat up the Nile, passing hippos and crocodiles, searching for elephants and waterbuck that come to the river to drink. The cruise lasts about three hours and we travel upstream to the bottom of the falls, stopping near the Devil's Cauldron, the place where the water bursts through the narrow gorge and creates an outstanding rainbow.",
  tags: ['safari'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/dv0a0014jpg_48448874656_o.jpg',
  numer_of_people: 10
  },
  {
  name: 'Sharpen your photography skills on the vast plains of the Masai Mara',
  location: 'Masai Mara',
  duration: 3,
  category: 'walking',
  description: 'Our days at Kicheche usually start early, with camp staff bringing tea, coffee, hot water and biscuits to the tent around 5am. One of the huge benefits of staying within the conservancies is that game drives start right from camp and we can be in position on the plains by first light. For photographers, this means the all-important golden hour is always maximised. Depending on the movement of the game and tips from the bush telegraph, drives can be a moveable feast. Some days we may find ourselves on a full-day safari (approximately 13 hours) while other days might be broken into morning and afternoon drives. Paul and his team will try to make good calls when it comes to sightings and will always aim to be in the best position for viewing. They will be trying their hardest to ensure that photographic opportunities are frequent, but they will not be dashing around ticking off species like mainstream safari companies. Early starts are the order of the day, and we normally find shade for lunch in a beautiful spot and to relax. Unless, that is, we come across a migration crossing or hunting cheetah. These drives are not endurance tests but a full day out on the plains can be quite tiring. They also involve patience, as a hungry cheetah will often wait many hours before making their move.
  Mealtimes are a delight under the stars or in the mess tent if there is bad weather. It is the game and scenery that make this area so incredible. Camp can often have a lion pride nearby, and their call accompanied by a hyena cackle is an occasional night-time companion. The property is very relaxing for those hours in the middle of the day between game drives and the haute cuisine and hot showers are a big bonus. These luxurious trappings sometimes belie the fact that the camp is right in the heart of the most prolific savannah on Earth.',
  tags: ['safari'],
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2017/09/PA-Hero-single-Kenya-WYX-e1660913497692.jpg',
  number_of_people: 10
  },
  {
  name: 'Turtle snorkelling safari in South Male Atoll; cross into Ari Atoll' ,
  location: 'South Male Atoll',
  duration: 4,
  category: 'swimming',
  description: 'This morning our first stop will be a reef located on the east side of the atoll which offers the strong possibility of a number of turtle sightings. The reef is shallow but dense with corals which provide turtles with an abundant food source. As with all Maldivian reefs there will also be plenty of fish to observe including Box fish, Porcupine fish and schools of Banner fish. The remainder of the day we will cross into Ari Atoll and head south towards the island of Dhangethi. Dependent on the sailing conditions if there is time there, will be the opportunity this afternoon to take a further snorkel trip before making a visit to the local island of Dhangethi where we will take a traditional Maldivian afternoon tea. Dhangethi is a typical Maldivian fishing island with an interesting story to tell concerning the moon and a Maldives Sultan!',
  tags: ['nature'],
  number_of_people: 6,
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2021/12/43561.jpg'
  },
  {
  name: 'Wildlife walk in Cahuita National Park',
  location: 'Costa Rica',
  duration: 6,
  category: 'walking',
  description: 'Cahuita National Park has 2,711 acres (1,097ha) of land and 600 acres (243ha) of coral reef, the largest reef system in Costa Rica. Today we visit the national park, taking a 4mi (7km) walk from the southern entrance, which follows the coastline, through rainforest and past impressive Caribbean beaches. Although a fairly small in size, there is plenty of diversity in the park. The rest of the afternoon is yours to explore the beach, join an optional snorkelling excursion or simply relax.',
  tags: ['nature'],
  number_of_people: 3,
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349/exodus-web/2022/09/Costa-Rica-wildlife.jpg'
  },
  {
  name: 'Walk to visit Kalibash villages',
  location: 'kalibash villages',
  duration: 5,
  category: 'walking',
  description: 'After breakfast, we spend the day exploring the area surrounding the unique Kalibash villages of Magura and Pestera, where the houses are built along mountain ridges with deep ravines and valleys in between. We visit these traditional houses and learn about the history of the settlements, which were built against the medieval invasions of Mongols, Tartars and Turks. Distance covered: 12km.' ,
  image_url: 'https://res.cloudinary.com/enchanting/q_70,f_auto,w_576,h_349,c_lfill,g_auto/exodus-web/2021/12/40491.jpg',
  number_of_people: 4,
  tags: ['nature']
  }
]

users = [
  {
    email: 'andres@email.com',
    password: 'password',
    first_name: 'Andres',
    last_name: 'Castellani'
  },
  {
    email: 'cedric@email.com',
    password: 'password',
    first_name: 'Cedric',
    last_name: 'Garcia'
  },
  {
    email: 'nadia@email.com',
    password: 'password',
    first_name: 'Nadia',
    last_name: 'Ou'
  },
  {
    email: 'sophie@email.com',
    password: 'password',
    first_name: 'Sophie',
    last_name: 'Watson'
  },
  {
    email: 'paul@email.com',
    password: 'password',
    first_name: 'Paul',
    last_name: 'Vickers'
  }
]

itineraries = [
  {
    title: 'Andres Journey'
  },
  {
    title: "Cedric's Journey"
  },
  {
    title: "Nadia's Journey"
  },
  {
    title: "Sophie's Journey"
  },
  {
    title: "Paul's Journey"
  }
]

activities.each do |activity|
  Activity.create(name: activity[:name], location: activity[:location], duration: activity[:duration], category: activity[:category], image_url: activity[:image_url], description: activity[:description], number_of_people: activity[:number_of_people], tags: activity[:tags])
end

users.each do |user|
  User.create(email: user[:email], password: user[:password], first_name: user[:first_name], last_name: user[:last_name])
end

itineraries.each do |itinerary|
  Itinerary.create(title: itinerary[:title])
end

Itinerary.all.each do |itinerary|
  rand_num = rand(3..7)
  activities = Activity.all.sample(rand_num)
  activities.each do |activity|
    Selection.create(itinerary_id: itinerary.id, activity_id: activity.id)
  end
end
