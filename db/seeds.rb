# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Comment.destroy_all
Artwork.destroy_all
Favorite.destroy_all
SavedArtwork.destroy_all
ViewingLocation.destroy_all
Artist.destroy_all
User.destroy_all


######### user ############
ed = User.create(username: 'Edward', email: 'ed@gmail.com', password: '123456'),
gijs = User.create(username: 'Gijs', email: 'gijs@gmail.com', password: '123456'),
ben = User.create(username: 'Ben', email: 'ben@gmail.com', password: '123456'),
christos = User.create(username: 'Christos', email: 'christos@gmail.com', password: '123456')



############## location/ gallery ################
clearing_aero = ViewingLocation.create(
  name: "Clearing Aero",
  address: "Carrer de Corsega, 467, Barcelona",
  description: "Clearing Aero's penchant for new streetart and film is sculpted into subtle, provocative and highly original shows. Limited-edition artists' texts, detailed explanations in English and Silvia's own bilingual talents complement the exhibitions. You'll enter intrigued, but emerge informed",
  remote_photo_url: 'https://www.santpaubarcelona.org/sites/default/files/styles/news_teaser/public/flickr/12835239003_0fda5fb8ab_1393612375.jpg?itok=U2gP9jjg'
  )

sleep(2)

rooted = ViewingLocation.create(
  name: "Rooted",
  address: "Carrer de Corsega, 1, Barcelona",
  description: "Rooted Gallery galleries of Barcelona and Madrid work in cahoots to coordinate and organise exhibitions of the artists they represent in other galleries and private and public institutions. Rooted Gallery family of galleries was founded in London in 1946 and won prestige in the 1950s for being the first gallery to show the German Expressionists in London. By 1958 Clearing Below Gallery was representing such artists as Oskar Kokoschka, Henry Moore, Francis Bacon, Victor Pasmore and Lucian Freud.",
  remote_photo_url: 'https://cdn02.visitbarcelona.com/files/5531-6681-imagenCAT/Centre_Cultura_Contemporania_CCCB_Barcelona_c2.jpg'
  )

sleep(2)

young_steps = ViewingLocation.create(
  name: "Young Steps",
  address: "Carrer de Mallorca, 411, Barcelona",
  description: "Young Steps Arts started out with the aim of creating a hybrid platform between commercial mediation and cultural contribution to disseminate current artistic trends. The gallery focuses on projects that reflect contextual dynamics, and artists working in the socio-political realm, such as Eugenio Merino, Núria Güell, the collective known as Democracia, and Carlos Aires, among others.",
  remote_photo_url: 'http://www.blogmuseupicassobcn.org/wp-content/uploads/2013/07/CRO_A.04_0260.jpg'
  )

sleep(2)

locust_focus = ViewingLocation.create(
  name: "Locust Focus",
  address: "Carrer de Budapest, 2, Barcelona",
  description: "Ever since its inception in 1976, Locust Focus Gallery has been part of art fairs Arco, Art Basel and Art Basel-Miami Beach. The gallery was one of the city's pioneers in contemporary art and continues to promote the various forms these artists use to express themselves.",
  remote_photo_url: 'https://www.shbarcelona.com/blog/en/wp-content/uploads/2015/11/MACBA_2011-810x608.jpg'
  )

sleep(2)

nuu_clearing = ViewingLocation.create(
  name: "Nuu Clearing",
  address: "Carrer de la Granja, 20, Barcelona",
  description: "The gallery of Nuu Clearing opened its doors in 2005. A veteran art lover who in the past had a foothold in the world of entertainment. In this gallery, art pieces are mixed with unconventional objects and furniture. They represent artists such as Antoni Llena, Joan Miró, Luis Marsans, Hernández Pijuan and Saul Steinberet, among others.",
  remote_photo_url: 'https://media-edg.barcelona.cat/wp-content/uploads/2015/05/fundacio-antoni-tapies-760x428.jpg'
  )

ViewingLocation.where(latitude: nil).delete_all

####### artist #############
franco_fasoli = Artist.create(
  name: "Franco Fasoli",
  bio: "Born in Buenos Aires and now living in Barcelona, Franco Fasoli is one of the most famous and talented urban artists of the Argentine artistic scene. A set designer and muralist, the art of Fasoli is influenced both by his ceramic studies and by the local technique of ‘porteño filleting’. It is at the end of the last decade when Franco introduces to his work characters of human bodies and animal heads, while also adopting influences from mexican wrestling and football hooliganism.",
  # remote_photo_url: 'https://d2jv9003bew7ag.cloudfront.net/uploads/franco-fasoli-jaz-portrit-555x312.jpg'
  )

depose = Artist.create(
  name: "Depose",
  bio: "DEPOSE is a French graffiti artist, born in 1977 in Sete. Since more than twenty years, he's been drawing art on walls in the form of tags and frescoes. He has a passion for letters and drawing. His style is a lot like black and white comic strips, where bubbles trickle and animals live with imaginary plants, and there are universal recurring themes like skull and crossbones or heart. He regularly exhibits in galleries and contributes to fresco projects, as an artist or artistic director.",
  # remote_photo_url: 'https://scontent-mad1-1.xx.fbcdn.net/v/t1.0-9/67133257_10156903966279145_7754939923991363584_n.jpg?_nc_cat=102&_nc_ohc=TXjjNomRdqgAQmz4zmgIJQtw4zrLbusQIbdEbfuiDfEs01Z50Ad-mMpQw&_nc_ht=scontent-mad1-1.xx&oh=b28df1eec1c70568da40346833451c5a&oe=5E7E8892'
  )

mist = Artist.create(
  name: "Mist",
  bio: "Guillaume Lemarquier alias Mist was born in Paris in 1972. He is a street artist, and more specifically a graffiti artist, an art that he discovered in 1988. He became recognized very quickly as one of the most talented and respected graffiti artists in Paris and as one of the best artists making wild style graffiti lettering in Europe. He has marked the generation that gave birth to what was to become street-art culture.",
  # remote_photo_url: 'https://scontent-mad1-1.xx.fbcdn.net/v/t31.0-8/11428102_10152876339752826_4446847946787898705_o.jpg?_nc_cat=106&_nc_ohc=Y57i5PT0Nj8AQmbU_wqzbdqbO9WQGpy6nT7IFWRbss15Tx0bR4ndWMWZw&_nc_ht=scontent-mad1-1.xx&oh=b745d83b2612e0d218f40983746d06cf&oe=5E6B7104'
  )

danny_o_connor = Artist.create(
  name: "Danny O'Connor",
  bio: "My work is a celebration of contrasts focusing mainly on portraits and figures with a prevalence of opposing artistic influences. My inspiration walks a tightrope between high and lowbrow sources as diverse as Comics, Illustration, Character Design, Tattoo Art and Graffiti to Abstract Expressionism, Cubism, Futurism, Art Noveau, Modernism and Constructivism all pulled together to create hyper stylised and abstracted works. Contrasts play a big role in what I do, it's probably the most resounding feature throughout all of my work in one way or another. I like to mix natural flowing lines with harsh diagonals. Clean crisp areas of colour with layered messy splashes of paint. I'm trying to achieve something that appears both modern and almost futuristic whilst retaining a raw traditional aesthetic.",
  # remote_photo_url: 'https://www.villadelarte.com/dannyoconnor?lightbox=dataItem-il3t2emy'
  )

francoise_nielly = Artist.create(
  name: "Françoise Nielly",
  bio: "Françoise Nielly has explored the different facets of image all her life, through painting, photography, roughs, illustrations and virtual computer generated animated graphics. It is clear now that painting is her direction and her passion. She gets her sense of space and construction from her father, who was an architect. Growing up in the South of France where she lived between Cannes and Saint-Tropez, she was never far from the light, the colour sense and the atmosphere that permeates the South of France. This is coupled with her studies at the Beaux Arts and Decorative Arts, and her sense of humour and of celebration.",
  # remote_photo_url: 'https://www.villadelarte.com/francoisenielly?lightbox=dataItem-iki7m9m21'
  )

mari_ito = Artist.create(
  name: "Mari Ito",
  bio: "Mari Ito was born in Tokyo, Japan in 1980. She majored in Nihonga, Japanese-style painting made with traditional practices, techniques and materials. She moved to Barcelona (Spain) in 2006. Since then she has taken up residence here and with Nihonga as her base she has developed various 2-D and sculptural works. With her motif centered upon her childhood experiences, loud colors and sensitive but sophisticated lines create unique works beyond traditional Japanese painting, opening up a unique image of the world. In pursuing the universal theme of the seeds of human desire, with its mix of happiness, sorrow and wrath, and in particular through the recurring image of flowers with faces, she reveals her distinctive approach, which is also filled with humor.",
  # remote_photo_url: 'https://static.wixstatic.com/media/29f7e0_ad6b4496f2e7458eb861c3d8c18e5ca3~mv2_d_4000_5808_s_4_2.jpg/v1/crop/x_0,y_386,w_4000,h_4482/fill/w_1200,h_1345,al_c,q_90,usm_0.66_1.00_0.01/Mari%20Ito%20I.webp'
  )

nemo_jantzen = Artist.create(
  name: "Nemo Jantzen",
  bio: "In my latest body of work it’s all about perception, how each individual perceives things differently, how things can change and looked at from a different angle or point of view, examining the effects and influence mass media has on our modern society and how it determines what we think and changes our perception of the world around us. Constantly bombarded with messages from a multitude of sources including, TV, Billboards, magazine and social media to name a few not only promoting products but also determining our behaviors, needs, what is and what is not important to know, concealing the truth and manipulating the masses. Like magicians shifting our focus and our attention to what they want us see or perceive while the real magic or rather the deception is actually happening elsewhere in front of your eyes.",
  # remote_photo_url: 'https://static.wixstatic.com/media/29f7e0_f86b51f1a9f74ca8b62d991e8d399286~mv2.jpg/v1/fill/w_445,h_671,al_c,lg_1,q_90/29f7e0_f86b51f1a9f74ca8b62d991e8d399286~mv2.webp'
  )

frank_hollywood = Artist.create(
  name: "Frank E Hollywood",
  bio: "Frank E Hollywood is best described as one of the most exciting multi-disciplinary media artist in the Netherlands. His pop-art paintings are filled with all kind of media, spray paint, magic markers and women. We figured he must have formed some helpful expertise by looking at women so closely for all those years, so we decided to talk to him about beauty.",
  # remote_photo_url: 'https://squaah.com/images/squaahcommunity/Art__Design/franksfseerzw.jpg'
  )

marc_harrold = Artist.create(
  name: "Marc Harrold",
  bio: "Marc Harrold’s photography is an exploration of time and space. In his BEACH series, Harrold opens out space with limitless sky above and ever-changing beach horizons. Within this unbound space, he composes fleeting moments by defining movement. Here is an evocative atmosphere that puts you on the beach during a late afternoon low tide on that perfect August day in the Hamptons, watching your kids in the surf, or out for an early morning beach run.",
  # remote_photo_url: 'https://static.wixstatic.com/media/29f7e0_a19c4b8f78fa47c4aad7eb8b5d5b1c0e~mv2.jpg/v1/fill/w_696,h_960,al_c,q_90/29f7e0_a19c4b8f78fa47c4aad7eb8b5d5b1c0e~mv2.webp'
  )

miles_aldridge = Artist.create(
  name: "Miles Aldridge",
  bio: "Miles Aldridge is a fashion photographer widely known for the distinctive style of his photographs, which are over-saturated, surreal, and glamorous. Aldridge sets a stage and mood akin to the great Hollywood directors of the 1940s through 1960s. Infused with intense color, light, and drama, his women and men are always beautiful yet detached. The women he portrays, in particular, are often caught in dark or mysterious situations. Among his influences are his father, graphic designer Alan Aldridge, and filmmakers David Lynch, Derek Jarman, and Federico Fellini.",
  # remote_photo_url: 'https://artzealous.com/wp-content/uploads/2017/08/MilesPortrait.jpg'
  )

eric_lecan = Artist.create(
  name: "Eric Lecan",
  bio: "Eric Lacan, aka Monsieur Qui, born in 1976 in Montreuil in the Parisian suburbs, now lives and works nearby in Vincennes. After collaborating in the 1990s with the PG (Putain de Gosses) crew and the 132 crew, he moved in the early 2000s from Paris to Marseille, where he had no time for graffiti but discovered collage via a flat mate’s New York photo-reports.",
  # remote_photo_url: 'https://pfrunner.files.wordpress.com/2015/11/c-pfrunner-e280a6-eric-lacan-__img_5172.jpg'
  )

jerome_mesnager = Artist.create(
  name: "Jerome Mesnager",
  bio: "What do the Great Wall of China and the Red Square in Moscow have in common with many walls of Paris streets? The answer is hiding in the street art: l’Homme en blanc or the White Man – a drawn silhouette of a man, imagined as a symbol of light, strength and peace, created in 1983 by the French artist Jérôme Mesnager. Educated for a cabinet maker and the comics’ author, this artist distinguished himself during the rise of the free figuration in the early 1980s, together with Blek le rat, Miss Tic, Jef Aérosol and Némo.",
  # remote_photo_url: 'https://d2jv9003bew7ag.cloudfront.net/uploads/Jerome-Mesnager-profile-555x312.jpg'
  )

############ artwork ################
sin_titulo_6 = Artwork.create!(
  viewing_location: locust_focus,
  title: 'Sin Titulo 6',
  artist: franco_fasoli,
  remote_photo_url: 'https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/353770_1_m.jpg',
  date_of_creation: '2018',
  # description: "",
  medium: "Drawing watercolour, aerosol paint",
  category: "Street art"
  )

sin_titulo = Artwork.create!(
  viewing_location: locust_focus,
  title: "Sin Titulo",
  artist: franco_fasoli,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/353794_1_m.jpg",
  date_of_creation: "2018",
  # description: "",
  medium: "Painting oil",
  category: "Painting"
  )

vincul_4 = Artwork.create!(
  viewing_location: locust_focus,
  title: "Vinculo #4",
  artist: franco_fasoli,
  remote_photo_url: "https://d2jv9003bew7ag.cloudfront.net/business/server/php/files/3238/341617428_1443640181.jpg",
  date_of_creation: "2018",
  # description: "",
  medium: "Arcylic on Canvas",
  category: "Painting"
  )

hip_hop_cactus = Artwork.create!(
  viewing_location: locust_focus,
  title: "Hip Hop Cactus",
  artist: depose,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/507698_1_m.jpg",
  date_of_creation: '2019',
  # description: "",
  medium: "Painting acrylic",
  category: "Street art, Fantastic"
  )

stone_heart_nb = Artwork.create!(
  viewing_location: locust_focus,
  title: "Stone Heart N&B",
  artist: depose,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/502697_1_m.jpg",
  date_of_creation: "2018",
  # description: "",
  medium: "Print Screen Print",
  category: "Street art"
  )

phm = Artwork.create!(
  viewing_location: locust_focus,
  title: "Mister Brick N&B",
  artist: depose,
  remote_photo_url: 'https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/502391_1_l.jpg',
  date_of_creation: "2018",
  # description: "",
  medium: "Print silkscreen",
  category: "Street art"
  )

mister_balloon_man = Artwork.create!(
  viewing_location: rooted,
  title: "Mister Balloon Man",
  artist: mist,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/559690_1_m.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting acrylic",
  category: "Street art"
  )

crop_circle_iii = Artwork.create!(
  viewing_location: rooted,
  title: "Crop Circle III",
  artist: mist,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/599361_1_m.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting acrylic",
  category: "Abstract, Street art"
  )

sans_titre = Artwork.create!(
  viewing_location: rooted,
  title: "Sans titre",
  artist: mist,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/190690_1_m.jpg",
  date_of_creation: "2014",
  # description: "",
  medium: "Painting acrylic",
  category: "Street art"
  )

headed_for_home = Artwork.create!(
  viewing_location: rooted,
  title: "Headed for Home",
  artist: danny_o_connor,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_adb87d607c884386812b514033116a68~mv2_d_3780_4535_s_4_2.jpg/v1/fill/w_1039,h_1246,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_adb87d607c884386812b514033116a68~mv2_d_3780_4535_s_4_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting",
  category: "Mixed media on canvas"
  )

basquiat = Artwork.create!(
  viewing_location: rooted,
  title: "Basquiat",
  artist: danny_o_connor,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_aa0ea3250c9a480ca6bf8ce08e112b5d~mv2_d_4252_4252_s_4_2.jpg/v1/fill/w_1246,h_1246,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_aa0ea3250c9a480ca6bf8ce08e112b5d~mv2_d_4252_4252_s_4_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting",
  category: "Mixed media on canvas"
  )

accomplish_through_stealth = Artwork.create!(
  viewing_location: rooted,
  title: "Accomplish Through Stealth",
  artist: danny_o_connor,
  remote_photo_url: "https://affordableartfair.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/a/c/accomplish-through-stealth.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Acrylic, Spray paint, Ink, Paint Marker, Graphite and collage on Canvas",
  category: "Mixed media on canvas"
  )

appoline = Artwork.create!(
  viewing_location: locust_focus,
  title: "Appoline",
  artist: francoise_nielly,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_d70f8bae2e2e4bfebc7aab621e50a91f~mv2_d_2871_2863_s_4_2.jpg/v1/fill/w_1249,h_1246,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_d70f8bae2e2e4bfebc7aab621e50a91f~mv2_d_2871_2863_s_4_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting",
  category: "Oil on canvas"
  )

angelo = Artwork.create!(
  viewing_location: locust_focus,
  title: "Angelo",
  artist: francoise_nielly,
  remote_photo_url: "https://www.galeries-bartoux.com/wp-content/uploads/2019/12/NIELLY-110X110-ANGELO-galeriesbartoux.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting",
  category: "Oil on canvas"
  )

energia = Artwork.create!(
  viewing_location: rooted,
  title: "Energia",
  artist: mari_ito,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_405c95428fac4d38be6b70605a8aa5f2~mv2_d_2037_2037_s_2.jpg/v1/fill/w_1344,h_1344,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_405c95428fac4d38be6b70605a8aa5f2~mv2_d_2037_2037_s_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Pigments, Nikawa glue, kadoide Japanese paper and Indian ink",
  category: "Mixed media"
  )

dentro = Artwork.create!(
  viewing_location: rooted,
  title: "Dentro del origen de mis deseos",
  artist: mari_ito,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_e31713334bbd405a94bb2299b0311f10~mv2_d_1500_1204_s_2.jpg/v1/fill/w_1500,h_1204,al_c,q_90/29f7e0_e31713334bbd405a94bb2299b0311f10~mv2_d_1500_1204_s_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Pigments, Nikawa glue, kadoide Japanese paper and Indian ink",
  category: "Mixed media"
  )

sunrays = Artwork.create!(
  viewing_location: young_steps,
  title: "Sunrays",
  artist: nemo_jantzen,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_551011b2e4e74f5ebb513ee5b5750933~mv2_d_2706_2715_s_4_2.jpg/v1/fill/w_1242,h_1246,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_551011b2e4e74f5ebb513ee5b5750933~mv2_d_2706_2715_s_4_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Resin domes",
  category: "Mixed media"
  )

punkd = Artwork.create!(
  viewing_location: young_steps,
  title: "Punk'd",
  artist: nemo_jantzen,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_7032daab553442d7bf88295a44149c88~mv2_d_2219_2029_s_2.jpg/v1/fill/w_1362,h_1245,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_7032daab553442d7bf88295a44149c88~mv2_d_2219_2029_s_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Resin domes",
  category: "Mixed media"
  )

rumble = Artwork.create!(
  viewing_location: young_steps,
  title: "Are You Ready to Rumble",
  artist: frank_hollywood,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_fe07794b45134739b13bae7a7bc9c8e0~mv2_d_2362_2423_s_2.jpg/v1/fill/w_1214,h_1245,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_fe07794b45134739b13bae7a7bc9c8e0~mv2_d_2362_2423_s_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Oil on canvas",
  category: "Painting"
  )

dawn = Artwork.create!(
  viewing_location: young_steps,
  title: "The Night is Darkest Just Before Dawn",
  artist: frank_hollywood,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_94905411dd9e424ea86513abf88cf13c~mv2.jpg/v1/fill/w_779,h_934,al_c,q_90/29f7e0_94905411dd9e424ea86513abf88cf13c~mv2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "Pigment print on aluminium",
  category: "Print"
  )

plage_107 = Artwork.create!(
  viewing_location: clearing_aero,
  title: "Plage 107",
  artist: marc_harrold,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_5ebc79262b424ad78e81c07aeac2b1e9~mv2_d_2881_1305_s_2.jpg/v1/fill/w_2676,h_1212,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_5ebc79262b424ad78e81c07aeac2b1e9~mv2_d_2881_1305_s_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "C-print mounted on plexiglass",
  category: "Print"
  )

plage_100 = Artwork.create!(
  viewing_location: clearing_aero,
  title: "Plage 100",
  artist: marc_harrold,
  remote_photo_url: "https://static.wixstatic.com/media/29f7e0_eddc029837c0469db5f5473855cf5b4f~mv2_d_11575_5276_s_4_2.jpg/v1/fill/w_2659,h_1212,al_c,q_90,usm_0.66_1.00_0.01/29f7e0_eddc029837c0469db5f5473855cf5b4f~mv2_d_11575_5276_s_4_2.webp",
  date_of_creation: "2019",
  # description: "",
  medium: "C-print mounted on plexiglass",
  category: "Print"
  )

a_drop_of_red = Artwork.create!(
  viewing_location: rooted,
  title: "A Drop of Red",
  artist: miles_aldridge,
  remote_photo_url: "https://potd.pdnonline.com/wp-content/uploads/2018/11/A-Drop-of-Red-2-2001-Miles-Aldridge.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Digital c-type print",
  category: "Print"
  )

i_only_want_you_to_love_me = Artwork.create!(
  viewing_location: rooted,
  title: "I Only Want You To Love Me",
  artist: miles_aldridge,
  remote_photo_url: "https://loeildelaphotographie.com/wp-content/uploads/2013/05/original_229645_s25_f13-jpg-1024x680.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Digital c-type print",
  category: "Print"
  )

etude_2 = Artwork.create!(
  viewing_location: nuu_clearing,
  title: "Étude 2",
  artist: eric_lecan,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/543220_1_l.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Drawing pencil",
  category: "Graphic, Animal"
  )

autoportrait = Artwork.create!(
  viewing_location: nuu_clearing,
  title: "Sunrays",
  artist: eric_lecan,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/506081_1_l.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Print engraving",
  category: "Portrait, Floral, Etching"
  )

no_69 = Artwork.create!(
  viewing_location: nuu_clearing,
  title: "N°69",
  artist: jerome_mesnager,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/647922_1_m.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting acrylic",
  category: "Street art"
  )

no_58 = Artwork.create!(
  viewing_location: nuu_clearing,
  title: "N°58",
  artist: jerome_mesnager,
  remote_photo_url: "https://storage.gra1.cloud.ovh.net/v1/AUTH_10e1a9235c63431c95e5b84a247830db/prod/artwork/642261_1_m.jpg",
  date_of_creation: "2019",
  # description: "",
  medium: "Painting aerosol paint, acrylic",
  category: "Street art"
  )

puts "#{Comment.count} comments (0)"
puts "#{Artwork.count} artworks (28)"
puts "#{ViewingLocation.count} locations (5)"
puts "#{Artist.count} Artists (12)"
puts "#{User.count} users (4)"


############ API V2 (Artsy) ################

# require 'net/http'
# require 'json'
# require 'open-uri'

# def build_api_client(url)
#   client_id = 'f0f4621cb4d96bb56038'
#   client_secret = '5eb9618233d99e41a420164f13ceeb44'

#   api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
#   response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
#   xapp_token = JSON.parse(response.body)['token']

#   api = Hyperclient.new(url) do |api|
#     api.headers['Accept'] = 'application/vnd.artsy-v2+json'
#     api.headers['X-Xapp-Token'] = xapp_token
#     api.connection(default: false) do |conn|
#       conn.use FaradayMiddleware::FollowRedirects
#       conn.use Faraday::Response::RaiseError
#       conn.request :json
#       conn.response :json, content_type: /\bjson$/
#       conn.adapter :net_http
#     end
#   end
# end


# location_bcn = [ "eve-leibe-gallery" ]

# @shows = []
# @count = 0

# def extract_shows(api, location)
#   api._response.body['_embedded']['results'].each do |object|
#     if object['og_type'] == 'show'
#       @shows << object.merge!(gallery_name: location)
#     end
#   end
#   p @shows
#   @count += 1
#   if api._response.body['_links']['next'] && @count < 10
#     extract_shows(api._links.next, location)
#   end
# end

# location_bcn.each do |location|
#   @count = 0
#   url = "https://api.artsy.net/api/search?q=#{location}"

#   api = build_api_client(url)

#   extract_shows(api, location)
# end

# @shows = @shows.select do |show|
#   url = show['_links']['self']['href']
#   id = url.split("/").last
#   show['id'] = id
#   begin
#     api = build_api_client(url)
#     status = api._response.body['status']
#     if status != 'closed'
#       puts '########### GREAT SUCCESS ############# ITS OPEN #################'
#       puts show['name']
#       puts "working: #{url}"
#       true
#     end
#   rescue
#     p "404 :( #{url}"
#     false
#   end
# end

# def to_img(api_data)
#   string = api_data._links.image.to_s
#   array = string.split('.')
#   if api_data.image_versions.include?('large')
#     array[-2] = array[-2] + 'large'
#   else
#     array[-2] = array[-2] + api_data.image_versions.first
#   end
#   array.join('.')
# end


# def extract_and_save_art(artworks)
#   artworks.each do |artwork|
#   if !artwork.title.nil? && !artwork._links.artists.first.nil? && !to_img(artwork).nil? && !artwork.date.nil? && !artwork.medium.nil? && !artwork.category.nil?

#       viewing_location = ViewingLocation.create!(name: artwork.collecting_institution, address: artwork.collecting_institution)
#       artist = Artist.create!(name: artwork._links.artists.first.name, bio: artwork._links.artists.first.biography)

#       new_artwork = Artwork.create!(
#         title: artwork.title,
#         viewing_location: viewing_location,
#         artist: artist,
#         photo: to_img(artwork),
#         date_of_creation: artwork.date,
#         medium: artwork.medium,
#         category: artwork.category,
#         # related_artworks: artwork._links.similar_artworks,
#       )

#       puts "title: #{new_artwork.title}"
#       puts "location: #{viewing_location.name}"
#       puts "artist: #{artist.name}"
#       puts "photo: #{to_img(artwork)}"
#       puts "date: #{artwork.date}"
#       puts "medium: #{artwork.medium}"
#       puts "category: #{artwork.category}"
#       # puts "related artists: #{artwork._links.similar_artworks}"
#     end
#   end

#   puts "created #{Artwork.count} artworks"
# end


# api = build_api_client('https://api.artsy.net/api')
# @shows.each do |show|
#   binding.pry
#   extract_and_save_art(api.artworks(show_id: show['id']))
# end



############ API V1 ################


# # artist
# picasso = Artist.create(name: "Picasso", bio: "Old artist")
# basquiat = Artist.create(name: "Jean-Michel Basquiat", bio: "Weird artist")
# lichtenstein = Artist.create(name: "Roy Lichtenstein", bio: "Modern artist")
# banksy = Artist.create(name: "Banksy", bio: "New artist")
# warhol = Artist.create(name: "Andy Warhol", bio: "Modern artist")
# leonardo = Artist.create(name: "Leonardo da Vinci", bio: "Old artist")

# #location
# le_louvre = ViewingLocation.create
# # artwork
# monalisa = Artwork.create!(viewing_location: le_louvre, title: 'Mona Lisa', artist: leonardo, photo: URI('https://images.unsplash.com/photo-1523554888454-84137e72c3ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80'), date_of_creation: '12/9/19', description: 'awesome')
# soup = Artwork.create!(viewing_location: le_louvre, title: 'Tomato beef noudle', artist: warhol, photo: URI("https://images.unsplash.com/photo-1541680670548-88e8cd23c0f4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '13/9/19', description: 'very good')
# flexible = Artwork.create!(viewing_location: le_louvre, title: 'Flexible', artist: basquiat, photo: URI("https://images.unsplash.com/photo-1494236536165-dab4d859818b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '14/9/19', description: 'awesome')
# head = Artwork.create!(viewing_location: le_louvre, title: 'Modern head', artist: lichtenstein, photo: URI("https://images.unsplash.com/photo-1501181726133-750ba3cf73c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '15/9/19', description: 'awesome')
# think = Artwork.create!(viewing_location: le_louvre, title: 'Think tank', artist: banksy, photo: URI("https://images.unsplash.com/photo-1551732998-9573f695fdbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '16/9/19', description: 'awesome')
# war = Artwork.create!(viewing_location: le_louvre, title: 'War', artist: warhol, photo: URI("https://images.unsplash.com/photo-1552084117-56a987666449?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '17/9/19', description: 'awesome')
# beret = Artwork.create!(viewing_location: le_louvre, title: 'Lover in Beret', artist: picasso, photo: URI("https://images.unsplash.com/photo-1508341421810-36b8fc06075b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"), date_of_creation: '18/9/19', description: 'awesome')

# # favorite
# favorite = Favorite.create(user: ben, artwork: monalisa)

# # comment
# Comment.create!(user: gijs, artwork: monalisa, content: "Love this art")
# Comment.create!(user: ben, artwork: monalisa, content: "Wow nice")
# Comment.create!(user: ben, artwork: monalisa, content: "Beautiful")

# Comment.create!(user: ben, artwork: flexible, content: "Love this art")
# Comment.create!(user: gijs, artwork: flexible, content: "Wow nice")
# Comment.create!(user: ben, artwork: flexible, content: "Beautiful")

# Comment.create!(user: ben, artwork: soup, content: "Love this art")
# Comment.create!(user: ben, artwork: soup, content: "Wow nice")
# Comment.create!(user: gijs, artwork: soup, content: "Beautiful")

# puts Comment.count


# require 'net/http'
# require 'json'
# require 'open-uri'

# client_id = 'f0f4621cb4d96bb56038'
# client_secret = '5eb9618233d99e41a420164f13ceeb44'

# artworks.each do |artwork|
# if !artwork.collecting_institution.nil? && !artwork.date.nil? && !artwork._links.artists.first.nil? && !artwork.title.nil? && !artwork.collecting_institution.nil? && !artwork.medium.nil? && category_arry.include?(artwork.category)
#     viewing_location = ViewingLocation.create!(name: artwork.collecting_institution)
#     artist = Artist.create!(name: artwork._links.artists.first.name, bio: artwork._links.artists.first.biography)

# api_url = URI.parse('https://api.artsy.net/api/tokens/xapp_token')
# response = Net::HTTP.post_form(api_url, client_id: client_id, client_secret: client_secret)
# xapp_token = JSON.parse(response.body)['token']

# api = Hyperclient.new('https://api.artsy.net/api') do |api|
#   api.headers['Accept'] = 'application/vnd.artsy-v2+json'
#   api.headers['X-Xapp-Token'] = xapp_token
#   api.connection(default: false) do |conn|
#     conn.use FaradayMiddleware::FollowRedirects
#     conn.use Faraday::Response::RaiseError
#     conn.request :json
#     conn.response :json, content_type: /\bjson$/
#     conn.adapter :net_http
#   end
# end


# artworks = api.artworks(size: 100)

# def to_img(api_data)
#   string = api_data._links.image.to_s
#   array = string.split('.')
#   if api_data.image_versions.include?('large')
#     array[-2] = array[-2] + 'large'
#   else
#     array[-2] = array[-2] + api_data.image_versions.first
#   end
#   array.join('.')
# end

# category_arry = ["Painting", "Photography", "Prints", "Work on Paper", "Drawing"]

# artworks.each do |artwork|

# if !artwork.collecting_institution.nil? && !artwork.date.nil? && !artwork._links.artists.first.nil? && !artwork.title.nil? && !artwork.collecting_institution.nil? && !artwork.medium.nil? && category_arry.include?(artwork.category)

#     viewing_location = ViewingLocation.create!(name: artwork.collecting_institution)
#     artist = Artist.create!(name: artwork._links.artists.first.name, bio: artwork._links.artists.first.biography)

#     new_artwork = Artwork.create!(
#       title: artwork.title,
#       viewing_location: viewing_location,
#       artist: artist,
#       photo: to_img(artwork),
#       date_of_creation: artwork.date,
#       medium: artwork.medium,
#       category: artwork.category,
#       related_artworks: artwork._links.similar_artworks,
#     )

#     puts "title: #{new_artwork.title}"
#     puts "location: #{viewing_location.name}"
#     puts "artist: #{artist.name}"
#     puts "photo: #{to_img(artwork)}"
#     puts "date: #{artwork.date}"
#     puts "medium: #{artwork.medium}"
#     puts "category: #{artwork.category}"
#     puts "related artists: #{artwork._links.similar_artworks}"
#   end
# end

# puts "created #{Artwork.count} artworks"
