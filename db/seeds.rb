# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(name: 'Asher Turner', photo: 'https://randomuser.me/api/portraits/men/5.jpg', email: 'asher.turner@example.com', password: Rails.application.credentials.user_password, bio: "Passionate architect dedicated to shaping spaces that inspire and transform. With an unwavering commitment to design excellence, I strive to create environments that uplift and enhance the human experience. Follow along as I share my architectural journey, innovative ideas, and love for sustainable design. Together, let's build a better future. ||PassionateArchitect || DesignExcellence || Sustainability")
user2 = User.create(name: 'Monsieur Julien Robert', photo: 'https://randomuser.me/api/portraits/men/77.jpg', email: 'julien.robert@example.com', password: Rails.application.credentials.user_password, bio: "Astrophysicist | Exploring the Cosmos | Passionate about the Universe | Science Communicator  Welcome to my cosmic journey! I'm [Your Name], an astrophysicist fascinated by the mysteries of the universe. Join me as we unravel the secrets of stars, galaxies, and everything in between. I'm here to share captivating insights, cutting-edge research, and mind-blowing discoveries. Let's explore the cosmos together and ignite a love for space. || Astrophysicist || CosmicExploration || ScienceCommunication")
user3 = User.create(name: 'Neusita Cavalcanti', photo: 'https://randomuser.me/api/portraits/women/37.jpg', email: 'neusita.cavalcanti@example.com', password: Rails.application.credentials.user_password, bio: "I'm a passionate software engineer, dedicated to crafting elegant and efficient solutions to complex problems. With a strong background in programming and a love for technology, I thrive on turning ideas into reality through clean code and innovative software development. Follow along as I share my coding journey, insights, and tips for building robust and scalable software. Let's shape the digital world together. SoftwareEngineer, CodeCrafting, nnovationDriven")
user4 = User.create(name: 'Helmi Tervo', photo: 'https://randomuser.me/api/portraits/women/58.jpg', email: 'helmi.tervo@example.com', password: Rails.application.credentials.user_password, bio: "I'm a wanderer at heart, exploring the world one adventure at a time. Join me as I share my travel tales, breathtaking landscapes, and unforgettable experiences. Let's embark on this journey together and discover the beauty that lies beyond the horizon. | Traveler | Wanderlust | AdventureAwaits")
user5 = User.create(name: 'Rogelio Castellanos', photo: 'https://randomuser.me/api/portraits/men/95.jpg', email: 'rogelio.castellanos@example.com', password: Rails.application.credentials.user_password, bio: "no bio")
user6 = User.create(name: 'Adarsh Pathak', photo: 'https://randomuser.me/api/portraits/men/75.jpg', email: 'adi8090808766@gmail.com', password: Rails.application.credentials.user_password, bio: "Full-Stack Developer || React || ROR || Ruby || HTML || CSS || JS || I am sayian from planet Full-stack each coding fight make me stronger than before || 5 🌟 Hacker Rank")

#***************************************************************************************************************************************************
################################################### post1 data created by user1 ###################################################################
#***************************************************************************************************************************************************

post1 = Post.create(title: 'Sustainable Architecture', text: "# The Evolution of Sustainable Architecture

![CostaRicaVincestudioGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/fb968999-0901-4bb0-9900-88be4ec94e8c)

In recent years, sustainable architecture has emerged as a crucial element in the construction industry. This article explores the evolution of sustainable design principles and their impact on the field of architecture.

## Introduction

The concept of sustainable architecture goes beyond energy efficiency. It encompasses a holistic approach that considers factors like material selection, water management, and environmental impact. This article delves into the key milestones in the development of sustainable architecture.

## Early Foundations

The roots of sustainable architecture can be traced back to ancient civilizations that utilized natural ventilation and passive solar design. From the mud-brick constructions of ancient Egypt to the vernacular architecture of various regions, early architects intuitively integrated sustainability into their designs.

## Modern Innovations

The 20th century witnessed significant advancements in sustainable architecture. Pioneers like Frank Lloyd Wright and Buckminster Fuller experimented with innovative materials and design principles. Their work laid the foundation for concepts like passive solar heating, green roofs, and daylighting.

## Contemporary Practices

Today, sustainable architecture has become a mainstream practice. Architects incorporate renewable energy systems, sustainable materials, and smart technologies to create environmentally friendly buildings. The article explores notable examples of contemporary sustainable architecture from around the world.

## Conclusion

![TechnipFmcTake5dayGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/15686a61-9291-4f2a-a8cc-da77fddce844)

As we navigate the challenges of climate change and limited resources, sustainable architecture has emerged as a crucial discipline. By embracing sustainable design principles, architects can play a pivotal role in creating a more sustainable and resilient future.

", author_id: user1.id)

# comments of post1
comment1_on_post1 = Comment.create(author_id: user3.id, text: "Architecture meets sustainability for a greener future! #SustainableDesign ", post_id: post1.id)
comment2_on_post1 = Comment.create(author_id: user2.id, text: "I love the idea of sustainable architecture! #Sustainability ", post_id: post1.id)
comment3_on_post1 = Comment.create(author_id: user4.id, text: "I am just mesmerised the level of your feelings and article towards nature ", post_id: post1.id)
comment4_on_post1 = Comment.create(author_id: user5.id, text: "such a great article", post_id: post1.id)
comment5_on_post1 = Comment.create(author_id: user6.id, text: "sustainable architecture is the future", post_id: post1.id)
comment6_on_post1 = Comment.create(author_id: user6.id, text: "anything is possible with sustainable architecture also save our planet", post_id: post1.id)

# likes of post1
like1_on_post1 = Like.create(author_id: user1.id, post_id: post1.id)
like2_on_post1 = Like.create(author_id: user2.id, post_id: post1.id)
like3_on_post1 = Like.create(author_id: user3.id, post_id: post1.id)
like4_on_post1 = Like.create(author_id: user4.id, post_id: post1.id)
like5_on_post1 = Like.create(author_id: user5.id, post_id: post1.id)
like6_on_post1 = Like.create(author_id: user6.id, post_id: post1.id)
like7_on_post1 = Like.create(author_id: user1.id, post_id: post1.id)
like8_on_post1 = Like.create(author_id: user2.id, post_id: post1.id)
like9_on_post1 = Like.create(author_id: user3.id, post_id: post1.id)

#***************************************************************************************************************************************************
################################################### post2 data created by user2 ###################################################################
#***************************************************************************************************************************************************

post2 = Post.create(title: 'Black Holes', text: "# Exploring Black Holes: Gateways to the Unknown

![BlackholeSpaceGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/6bdd5e12-5dec-43a0-9aaa-351311836154)


Black holes, the enigmatic cosmic entities that defy our understanding of the universe, continue to captivate scientists and stargazers alike. In this article, we delve into the mysterious nature of black holes and their profound implications for astrophysics.

## Unveiling the Secrets

Black holes are born from the remnants of massive stars, collapsing under their own gravity to form regions of intense gravitational pull. We discuss the properties of black holes, their event horizons, and the mind-bending phenomena occurring within them.

## Gravitational Waves and Black Hole Mergers

The groundbreaking discovery of gravitational waves in 2015 opened up a new window to study black holes. We explore how the collision of black holes generates these ripples in spacetime and how they offer invaluable insights into the dynamics of these celestial beasts.

## Black Holes and Time Warps

Black holes have a profound effect on the fabric of spacetime, warping it to an extreme degree. We delve into the fascinating concept of time dilation near black holes, where time itself slows down, offering a glimpse into the strange nature of these cosmic anomalies.

## Supermassive Black Holes: Galactic Giants

At the centers of galaxies, supermassive black holes hold sway over vast regions. We discuss their formation, growth, and their crucial role in shaping the evolution of galaxies. We also explore the ongoing research and efforts to capture the first-ever image of a black hole's event horizon.

## The Black Hole Information Paradox

One of the most intriguing puzzles in astrophysics is the fate of information that falls into a black hole. We explore the paradox of information loss and the ongoing debate among scientists seeking a resolution to this fundamental conundrum.

## Conclusion

Black holes continue to push the boundaries of our understanding of the universe. As we unravel the mysteries of these cosmic entities, we not only deepen our knowledge of astrophysics but also gain insights into the very nature of space, time, and the laws that govern our reality.

", author_id: user2.id)

# comments of post2
comment1_on_post2 = Comment.create(author_id: user1.id, text: "As an astrophysicist, I find it fascinating to draw parallels between the vastness of the universe and the intricacies of architecture. Both fields explore the fundamental laws that govern our existence, whether it's the forces shaping galaxies or the principles guiding the design of buildings. The evolution of sustainable architecture resonates with our collective responsibility to preserve and sustain our planet, just as astrophysics reminds us of our place in the cosmos. It's incredible to witness how architectural innovation can blend functionality, aesthetics, and sustainability, creating harmonious spaces that inspire us to reach for the stars. ", post_id: post2.id)
comment2_on_post2 = Comment.create(author_id: user3.id, text: "The mysteries of black holes never cease to amaze me! Their immense gravitational pull and the way they warp space and time are mind-boggling. Exploring the depths of these cosmic enigmas is like unraveling the secrets of the universe itself. #BlackHoleMysteries #CosmicWonders", post_id: post2.id)
comment3_on_post2 = Comment.create(author_id: user4.id, text: "Wow Great Article I learnt something new today", post_id: post2.id)
comment4_on_post2 = Comment.create(author_id: user5.id, text: "The concept of time dilation near black holes is mind-blowing! It's fascinating how our perception of time changes as we approach these cosmic phenomena. This post beautifully connects the cosmic wonders to our understanding of space-time. Kudos! 🌌⏱️", post_id: post2.id)
comment5_on_post2 = Comment.create(author_id: user6.id, text: "As a physics enthusiast, I appreciate how this post bridges astrophysics and architecture! It's intriguing to draw parallels between the vastness of the universe and the intricacies of design. Both explore the essence of existence in their unique ways. Truly thought-provoking! 👩‍🔬🏛️", post_id: post2.id)
comment6_on_post2 = Comment.create(author_id: user3.id, text: "Black holes are the enigmatic marvels of our cosmos! The way they challenge our understanding of physics is awe-inspiring. This post brilliantly captures the essence of their mystique and their significance in unraveling the fabric of space-time. 🌌🕳️", post_id: post2.id)
comment7_on_post2 = Comment.create(author_id: user4.id, text: "This discussion on black holes ignites my curiosity about the unknown! The parallels drawn here between astrophysics and architecture are thought-provoking. It's incredible how diverse fields intersect, enriching our perspective on the universe. Fantastic insights shared! 🔭🌟", post_id: post2.id)
comment8_on_post2 = Comment.create(author_id: user1.id, text: "The more we delve into the mysteries of black holes, the more we realize how much there is to explore! This post beautifully juxtaposes the cosmic wonders with architectural concepts, emphasizing the depth and beauty present in both realms. Truly thought-stirring! 🌌🏗️", post_id: post2.id)

# likes of post2
like1_on_post2 = Like.create(author_id: user1.id, post_id: post2.id)
like2_on_post2 = Like.create(author_id: user2.id, post_id: post2.id)
like3_on_post2 = Like.create(author_id: user3.id, post_id: post2.id)
like4_on_post2 = Like.create(author_id: user4.id, post_id: post2.id)
like5_on_post2 = Like.create(author_id: user5.id, post_id: post2.id)
like6_on_post2 = Like.create(author_id: user6.id, post_id: post2.id)
like7_on_post2 = Like.create(author_id: user1.id, post_id: post2.id)

#***************************************************************************************************************************************************
################################################### post3 data created by user1 ###################################################################
#***************************************************************************************************************************************************

post3 = Post.create(title: 'Minimalist Architecture', text: "# Exploring Minimalist Architecture: Less is More

![HouseArchitectureGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/f87b6e8b-08cc-4aa8-80c9-d1a4de6b3143)

Minimalist architecture has gained immense popularity for its clean lines, simplicity, and emphasis on functionality. In this article, we delve into the philosophy behind minimalist design and its impact on the architectural landscape.

## Understanding Minimalism

At its core, minimalist architecture seeks to eliminate excess and embrace simplicity. It emphasizes the use of clean lines, open spaces, and a limited color palette. This article explores the fundamental principles of minimalism and how they shape architectural design.

## Influential Architects

Several architects have made significant contributions to the field of minimalist architecture. From Ludwig Mies van der Rohe's famous quote less is more to the works of Tadao Ando and John Pawson, we examine the unique approaches and iconic projects that have defined minimalist architecture.

## Integration with Nature

Minimalist architecture often incorporates a seamless integration with nature. Large windows, open layouts, and minimalist interiors allow for a deeper connection with the surrounding environment. We discuss how minimalist design can enhance the relationship between architecture and nature.

## Minimalism in Urban Spaces

Minimalist architecture has also found its place in urban environments. The article explores how minimalist design principles can transform urban landscapes, from skyscrapers to public spaces, and how it contributes to creating a sense of tranquility in bustling cities.

## Future of Minimalism

As we move forward, minimalist architecture continues to evolve and adapt to contemporary needs. We examine emerging trends and innovative application of minimalist design, such as modular construction, sustainable materials, and the integration of smart technologies.

## Conclusion

![PhuArchitectureFraModelGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/f9c3e11d-bc26-4bf5-b635-d02bb50fe801)


Minimalist architecture's timeless appeal lies in its ability to create serene and functional spaces. By embracing simplicity, architects can redefine the relationship between humans, their surroundings, and the built environment. Join us as we explore the captivating world of minimalist architecture.

", author_id: user1.id)

# comments of post3
comment1_on_post3 = Comment.create(author_id: user5.id, text: "Minimalist architecture is all about simplicity and functionality! It's incredible how these principles can transform urban spaces, creating a sense of tranquility amidst the hustle and bustle of cities. This post beautifully captures the essence of minimalist design and its impact on the architectural landscape. #MinimalistArchitecture #UrbanSpaces", post_id: post3.id)
comment2_on_post3 = Comment.create(author_id: user2.id, text: "I love the idea of minimalist architecture! It's amazing how simplicity can enhance the relationship between humans and their surroundings. This post beautifully captures the essence of minimalist design and its impact on the architectural landscape. #MinimalistArchitecture #UrbanSpaces", post_id: post3.id)
comment3_on_post3 = Comment.create(author_id: user3.id, text: "Minimalist architecture is all about simplicity and functionality! It's incredible how these principles can transform urban spaces, creating a sense of tranquility amidst the hustle and bustle of cities. This post beautifully captures the essence of minimalist design and its impact on the architectural landscape. #MinimalistArchitecture #UrbanSpaces", post_id: post3.id)
comment4_on_post3 = Comment.create(author_id: user4.id, text: "I love the idea of minimalist architecture! It's amazing how simplicity can enhance the relationship between humans and their surroundings. This post beautifully captures the essence of minimalist design and its impact on the architectural landscape. #MinimalistArchitecture #UrbanSpaces", post_id: post3.id)
comment5_on_post3 = Comment.create(author_id: user5.id, text: "Minimalist architecture is all about simplicity and functionality! It's incredible how these principles can transform urban spaces, creating a sense of tranquility amidst the hustle and bustle of cities. This post beautifully captures the essence of minimalist design and its impact on the architectural landscape. #MinimalistArchitecture #UrbanSpaces", post_id: post3.id)
comment6_on_post3 = Comment.create(author_id: user6.id, text: "Asher Great article man we should focus on Minimalist Architecture with suitability as well", post_id: post3.id)

# likes of post3
like1_on_post3 = Like.create(author_id: user1.id, post_id: post3.id)
like2_on_post3 = Like.create(author_id: user2.id, post_id: post3.id)
like3_on_post3 = Like.create(author_id: user3.id, post_id: post3.id)
like4_on_post3 = Like.create(author_id: user4.id, post_id: post3.id)
like5_on_post3 = Like.create(author_id: user5.id, post_id: post3.id)

#***************************************************************************************************************************************************
################################################### post4 data created by user2 ###################################################################
#***************************************************************************************************************************************************

post4 = Post.create(title: 'Understanding Stellar Evolution', text: "# The Dance of Stars: Understanding Stellar Evolution

![StarryNightStarsGIF (2)](https://github.com/PowerLevel9000/Blog/assets/123863559/6cb05f86-301f-4c2c-9d92-8a44ebce3fb6)


Stars, the celestial beacons that light up our universe, undergo a fascinating journey of evolution. In this article, we explore the intricate stages of stellar evolution and the underlying physical processes that shape these cosmic entities.

## Birth of Stars: Nebulas and Protostars

Stars are born within vast clouds of gas and dust called nebulae. We delve into the gravitational collapse of nebulae and the formation of protostars, as these infant stars gather mass through the accretion of surrounding material.

## Main Sequence Stars: The Stellar Balance

Main sequence stars, like our Sun, spend the majority of their lives in a state of equilibrium. We discuss the fusion of hydrogen into helium in their cores and the delicate balance between gravitational forces and the pressure generated by nuclear reactions.

## Stellar Evolution Off the Main Sequence

As stars exhaust their hydrogen fuel, they embark on a transformative journey. We explore the different paths stars can take, such as becoming red giants, white dwarfs, neutron stars, or even exploding in spectacular supernovae.

## The Death of Massive Stars: Supernovae and Stellar Remnants

Massive stars culminate their lives in awe-inspiring explosions known as supernovae. We discuss the cataclysmic events that unfold during these explosions and the remnants they leave behind, including neutron stars and black holes.

## Stellar Nurseries: Stellar Birthplaces

Throughout the universe, regions rich in gas and dust act as stellar nurseries, giving rise to new generations of stars. We explore these star-forming regions and the ongoing efforts to study them using telescopes and space missions.

## Conclusion
![ComehereBabyGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/2553e485-eab0-4ccd-a038-9d995acc3184)

Stellar evolution is a symphony of cosmic processes, shaping the universe and providing the elements necessary for life. By unraveling the intricate dance of stars, we gain insights into the fundamental processes that have shaped our existence and continue to illuminate the cosmos.

", author_id: user2.id)

# comments of post4
comment1_on_post4 = Comment.create(author_id: user1.id, text: "The evolution of stars is a mesmerizing cosmic ballet! This post beautifully captures the intricate stages of stellar evolution and the underlying physical processes that shape these celestial entities. #StellarEvolution #CosmicBallet", post_id: post4.id)
comment2_on_post4 = Comment.create(author_id: user3.id, text: "The cosmic dance of star formation and their eventual fate is awe-inspiring! This post beautifully illustrates the lifecycle of stars, from birth to their spectacular end. It's a testament to the wonders of the universe and its ever-evolving nature. #CelestialJourney #EternalCosmos", post_id: post4.id)
comment3_on_post4 = Comment.create(author_id: user4.id, text: "The sheer magnitude of stellar transformations is simply breathtaking! This post vividly explains the cosmic processes shaping stars, highlighting the immense beauty hidden within the cosmos. An enlightening read indeed! 🌟✨ #CelestialWonders #CosmicMarvels", post_id: post4.id)
comment4_on_post4 = Comment.create(author_id: user5.id, text: "As an astronomy enthusiast, this post resonates deeply! The depiction of stellar evolution is captivating, illustrating the celestial dance of birth, life, and death among stars. It's a reminder of the grandeur and mystery that surround us in the cosmos. 🌌🌠 #StarryMarvels #CosmicCycle", post_id: post4.id)
comment5_on_post4 = Comment.create(author_id: user6.id, text: "The journey from protostars to supernovae is a captivating cosmic odyssey! This post elegantly narrates the captivating story of stellar evolution, showcasing the marvels of celestial processes. It's astonishing how stars evolve and contribute to the cosmic symphony. 🌟🎶 #CelestialTales #StellarSaga", post_id: post4.id)
comment6_on_post4 = Comment.create(author_id: user5.id, text: "The profound narrative of star evolution is truly mesmerizing! This post brilliantly encapsulates the cosmic dance of stars, from their birth in cosmic nurseries to their awe-inspiring demise. It's a testament to the magnificence and complexity of the universe. 🌌🌟 #CelestialNarrative #CosmicJourney", post_id: post4.id)

# likes of post4
like1_on_post4 = Like.create(author_id: user1.id, post_id: post4.id)
like2_on_post4 = Like.create(author_id: user2.id, post_id: post4.id)
like3_on_post4 = Like.create(author_id: user3.id, post_id: post4.id)
like4_on_post4 = Like.create(author_id: user4.id, post_id: post4.id)
like5_on_post4 = Like.create(author_id: user5.id, post_id: post4.id)
like6_on_post4 = Like.create(author_id: user6.id, post_id: post4.id)
like7_on_post4 = Like.create(author_id: user1.id, post_id: post4.id)
like8_on_post4 = Like.create(author_id: user2.id, post_id: post4.id)
like9_on_post4 = Like.create(author_id: user3.id, post_id: post4.id)
like10_on_post4 = Like.create(author_id: user4.id, post_id: post4.id)
like11_on_post4 = Like.create(author_id: user5.id, post_id: post4.id)

#***************************************************************************************************************************************************
################################################### post5 data created by user2 ###################################################################
#***************************************************************************************************************************************************
post5 = Post.create(title: 'Beyond Our Solar System', text: "# Beyond Our Solar System: Exploring Exoplanets

![UniverseGalaxyGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/17fe4695-a541-4063-b185-8f210d103452)

In recent years, the discovery of exoplanets has revolutionized our understanding of planetary systems and the potential for extraterrestrial life. In this article, we embark on a journey beyond our solar system to explore the vast array of exoplanets that populate the galaxy.

## The Hunt for Exoplanets

We delve into the methods and techniques astronomers employ to detect exoplanets, from the radial velocity method to the transit method and the cutting-edge technology of direct imaging. We discuss the challenges and triumphs of exoplanet discovery.

## Exoplanet Diversity

Exoplanets come in a staggering variety of sizes, compositions, and orbits. We explore the different types of exoplanets, including gas giants, rocky worlds, and even potentially habitable Earth-like planets. We also discuss the concept of habitable zones and the search for extraterrestrial life.

## Exoplanet Atmospheres: Clues to Habitability

Studying the atmospheres of exoplanets provides valuable insights into their compositions and potential habitability. We examine the methods employed to study exoplanet atmospheres, such as spectroscopy, and discuss the tantalizing discoveries made thus far.

## Exoplanet Discoveries and Missions

The article highlights notable exoplanet discoveries and the missions that have deepened our understanding of these distant worlds. From the Kepler mission to the Transiting Exoplanet Survey Satellite (TESS) and upcoming missions like the James Webb Space Telescope, we explore the exciting frontiers of exoplanet exploration.

## The Future of Exoplanet Science

As technology advances, so too does our ability to detect and study exoplanets. We discuss the future prospects of exoplanet science, including the search for biosignatures and the potential for direct imaging of Earth-like planets in the habitable zones of distant star systems.

## Conclusion

![UniverseGIF](https://github.com/PowerLevel9000/Blog/assets/123863559/c56f4d68-66e9-4f0a-8101-8d232f190fdf)

The discovery of exoplanets has transformed our perspective on the cosmos and our place in it. By exploring these distant worlds, we expand our understanding of planetary systems and the potential for life beyond our solar system, igniting our curiosity and driving us further into the cosmic frontier.

", author_id: user2.id)

# comments of post5
comment1_on_post5 = Comment.create(author_id: user1.id, text: "Exoplanets are the cosmic gems of our galaxy! This post beautifully captures the diversity of exoplanets and the ongoing efforts to study them. It's incredible to witness how far we've come in our quest to explore the cosmos. #ExoplanetExploration #CosmicJourney", post_id: post5.id)
comment2_on_post5 = Comment.create(author_id: user3.id, text: "The discovery of exoplanets has transformed our understanding of planetary systems and the potential for extraterrestrial life. This post brilliantly captures the excitement surrounding exoplanet exploration and the latest advancements in the field. #ExoplanetExploration #CosmicJourney", post_id: post5.id)
comment3_on_post5 = Comment.create(author_id: user4.id, text: "Exoplanets are the cosmic gems of our galaxy! This post beautifully captures the diversity of exoplanets and the ongoing efforts to study them. It's incredible to witness how far we've come in our quest to explore the cosmos. #ExoplanetExploration #CosmicJourney", post_id: post5.id)
comment4_on_post5 = Comment.create(author_id: user5.id, text: "The discovery of exoplanets has transformed our understanding of planetary systems and the potential for extraterrestrial life. This post brilliantly captures the excitement surrounding exoplanet exploration and the latest advancements in the field. #ExoplanetExploration #CosmicJourney", post_id: post5.id)
comment5_on_post5 = Comment.create(author_id: user6.id, text: "Exoplanets are the cosmic gems of our galaxy! This post beautifully captures the diversity of exoplanets and the ongoing efforts to study them. It's incredible to witness how far we've come in our quest to explore the cosmos. #ExoplanetExploration #CosmicJourney", post_id: post5.id)
comment6_on_post5 = Comment.create(author_id: user5.id, text: "The discovery of exoplanets has transformed our understanding of planetary systems and the potential for extraterrestrial life. This post brilliantly captures the excitement surrounding exoplanet exploration and the latest advancements in the field. #ExoplanetExploration #CosmicJourney", post_id: post5.id)

# likes of post5
like1_on_post5 = Like.create(author_id: user1.id, post_id: post5.id)
like2_on_post5 = Like.create(author_id: user2.id, post_id: post5.id)
like3_on_post5 = Like.create(author_id: user3.id, post_id: post5.id)
like4_on_post5 = Like.create(author_id: user4.id, post_id: post5.id)
like5_on_post5 = Like.create(author_id: user5.id, post_id: post5.id)
like6_on_post5 = Like.create(author_id: user6.id, post_id: post5.id)
like7_on_post5 = Like.create(author_id: user1.id, post_id: post5.id)
like8_on_post5 = Like.create(author_id: user2.id, post_id: post5.id)
like9_on_post5 = Like.create(author_id: user3.id, post_id: post5.id)

#***************************************************************************************************************************************************
################################################### post6 data created by user3 ###################################################################
#***************************************************************************************************************************************************

post6 = Post.create(title: 'The Power of Algorithms', text: "# The Power of Algorithms

Algorithms are the backbone of computer science, shaping the digital world we live in. These step-by-step instructions enable us to solve complex problems efficiently and effectively. From sorting and searching to machine learning and cryptography, algorithms empower us to accomplish tasks that were once considered impossible.

Join me as we dive into the fascinating world of algorithms and explore their application in various domains. We'll discuss classic algorithms like quicksort and Dijkstra's algorithm, as well as cutting-edge techniques such as genetic algorithms and neural networks. We'll examine how algorithms play a crucial role in data analysis, optimization, and artificial intelligence.

Beyond their technical significance, algorithms also influence our everyday lives. They power the search engines that help us find information instantly, recommend products that match our interests, and drive the personalized content we encounter online.

Understanding algorithms is not only essential for computer scientists and programmers but also for anyone who wants to comprehend the inner workings of the digital age. By delving into the world of algorithms, we gain insights into problem-solving strategies, computational thinking, and the art of designing efficient solutions.

Join me on this algorithmic journey as we unravel their power and potential. Let's explore how algorithms shape our world and make the impossible possible. #Algorithms #ProblemSolving #ComputationalThinking
", author_id: user3.id)

# comments of post6
comment1_on_post6 = Comment.create(author_id: user1.id, text: "The power of algorithms is truly astounding! This post brilliantly captures the essence of algorithms and their application in various domains. It's incredible to witness how algorithms enable us to solve complex problems efficiently and effectively. #Algorithms #ProblemSolving #ComputationalThinking", post_id: post6.id)
comment2_on_post6 = Comment.create(author_id: user3.id, text: "Algorithms are the backbone of computer science, shaping the digital world we live in. This post beautifully captures the power of algorithms and their application in various domains. It's incredible to witness how algorithms enable us to solve complex problems efficiently and effectively. #Algorithms #ProblemSolving #ComputationalThinking", post_id: post6.id)
comment3_on_post6 = Comment.create(author_id: user2.id, text: "The role of algorithms in problem-solving is simply remarkable! This post brilliantly highlights their versatility across various fields. It's awe-inspiring to see how algorithms drive innovation and efficiency in our digital age. #Algorithms #Innovation #Efficiency", post_id: post6.id)
comment4_on_post6 = Comment.create(author_id: user4.id, text: "As a technology enthusiast, this post resonates deeply with me! Algorithms are the bedrock of technological advancements, facilitating solutions to complex problems. This post beautifully emphasizes their significance across diverse domains. #Algorithms #TechInnovation #DigitalSolutions", post_id: post6.id)
comment5_on_post6 = Comment.create(author_id: user5.id, text: "The prowess of algorithms in problem-solving is awe-inspiring! This post eloquently portrays their impact across various disciplines. It's remarkable how algorithms streamline processes and drive innovation in today's digital landscape. #Algorithms #Innovation #ProblemSolvers", post_id: post6.id)
comment6_on_post6 = Comment.create(author_id: user6.id, text: "This post wonderfully encapsulates the influence of algorithms in our digital world! It's fascinating to see how they optimize processes and revolutionize industries. Truly, algorithms are the driving force behind our technological advancements. #Algorithms #DigitalRevolution #Innovation", post_id: post6.id)
comment7_on_post6 = Comment.create(author_id: user5.id, text: "The impact of algorithms on problem-solving is indeed profound! This post beautifully articulates their significance in diverse realms. It's inspiring to witness how algorithms pave the way for innovation and efficiency in our evolving world. #Algorithms #Innovation #Efficiency", post_id: post6.id)

# likes of post6
like1_on_post6 = Like.create(author_id: user1.id, post_id: post6.id)
like2_on_post6 = Like.create(author_id: user2.id, post_id: post6.id)
like3_on_post6 = Like.create(author_id: user3.id, post_id: post6.id)
like4_on_post6 = Like.create(author_id: user4.id, post_id: post6.id)

#***************************************************************************************************************************************************
################################################### post7 data created by user3 ###################################################################
#***************************************************************************************************************************************************

post7 = Post.create(title: 'Data Science and Big Data', text: "# The Rise of Data Science and Big Data

Data has become one of the most valuable resources in today's digital age. In this post, we explore the emergence of data science and the role of big data in transforming industries.

We'll dive into the world of data science, where we extract insights and knowledge from large and complex datasets. From data collection and preprocessing to statistical analysis and machine learning, we'll discuss the tools and techniques used by data scientists to uncover patterns, make predictions, and drive data-informed decision-making.

Big data, with its vast volume, velocity, and variety, presents both challenges and opportunities. We'll explore the technologies and frameworks that enable the storage, processing, and analysis of massive datasets. We'll also discuss the ethical considerations surrounding data privacy, security, and bias.

Join me as we unravel the power of data science and big data. Let's explore how these fields are reshaping industries, driving innovation, and paving the way for a data-driven future. #DataScience #BigData #InsightsFromData
", author_id: user3.id)

# comments of post7
comment1_on_post7 = Comment.create(author_id: user1.id, text: "Data science is a powerful tool for extracting insights from data! This post brilliantly captures the essence of data science and its impact on various domains. It's incredible to witness how data science enables us to make data-informed decisions and drive innovation. #DataScience #InsightsFromData #DataDriven", post_id: post7.id)
comment2_on_post7 = Comment.create(author_id: user2.id, text: "Data science's impact on decision-making is truly remarkable! This post effectively encapsulates its significance across diverse sectors. It's fascinating to see how data-driven approaches reshape industries and foster innovation. #DataScience #Innovation #DataDrivenDecisions", post_id: post7.id)
comment3_on_post7 = Comment.create(author_id: user3.id, text: "The realm of data science is an evolving landscape! This post vividly portrays its transformative power across various domains. It's astonishing how data insights fuel progress and shape the future of technology. #DataScience #TechTransformation #Insights", post_id: post7.id)
comment4_on_post7 = Comment.create(author_id: user4.id, text: "This post elegantly highlights the prowess of data science in decision-making! It's inspiring to witness how data-driven approaches steer advancements across industries. Truly, data science is at the forefront of innovation. #DataScience #Innovation #DecisionMaking", post_id: post7.id)
comment5_on_post7 = Comment.create(author_id: user5.id, text: "As an enthusiast in analytics, this post resonates deeply! Data science's ability to extract insights is awe-inspiring. It's remarkable how data-driven methodologies revolutionize problem-solving across diverse sectors. #DataScience #Insights #ProblemSolving", post_id: post7.id)
comment6_on_post7 = Comment.create(author_id: user6.id, text: "The transformative impact of data science is evident in this post! It's captivating to see how it reshapes decision-making with data-backed insights. Data science indeed fuels innovation and propels industries forward. #DataScience #Innovation #DecisionInsights", post_id: post7.id)

# likes of post7
like1_on_post7 = Like.create(author_id: user1.id, post_id: post7.id)
like2_on_post7 = Like.create(author_id: user2.id, post_id: post7.id)
like3_on_post7 = Like.create(author_id: user3.id, post_id: post7.id)
like4_on_post7 = Like.create(author_id: user4.id, post_id: post7.id)
like5_on_post7 = Like.create(author_id: user5.id, post_id: post7.id)
like6_on_post7 = Like.create(author_id: user6.id, post_id: post7.id)
like7_on_post7 = Like.create(author_id: user1.id, post_id: post7.id)

#***************************************************************************************************************************************************
################################################### post8 data created by user3 ###################################################################
#***************************************************************************************************************************************************

post8 = Post.create(title: 'Quantum Computing', text: "# The Future of Computing: Quantum Computing

Quantum computing holds the promise of revolutionizing the way we process information and solve complex problems. Building upon the principles of quantum mechanics, these computers utilize quantum bits, or qubits, to represent and manipulate data in ways that defy classical computation.

In this post, we embark on an exciting journey into the quantum realm. We'll explore the mind-boggling principles of superposition and entanglement, which form the foundation of quantum computing. We'll discuss quantum gates, quantum algorithms, and the potential application of quantum computing in fields like cryptography, optimization, and scientific simulations.

While still in its early stages, quantum computing has already demonstrated its potential in solving certain problems exponentially faster than classical computers. We'll dive into quantum algorithms such as Shor's algorithm for factoring large numbers and Grover's algorithm for database search.

However, quantum computing also poses challenges. Quantum systems are incredibly fragile, and errors can easily occur. Building stable and scalable quantum computers is a formidable task that requires advances in physics, engineering, and computer science.

Join me on this journey to explore the future of computing. Let's discuss the latest advancements, breakthroughs, and challenges in the field of quantum computing and imagine the possibilities of a world where quantum technology transforms the way we solve problems.
", author_id: user3.id)

# comments of post8
comment1_on_post8 = Comment.create(author_id: user1.id, text: "Quantum computing is the future of computing! This post brilliantly captures the essence of quantum computing and its potential application. It's incredible to witness how quantum technology can transform the way we solve problems. #QuantumComputing #TechInnovation #ProblemSolving", post_id: post8.id)
comment2_on_post8 = Comment.create(author_id: user2.id, text: "The potential of quantum computing is indeed groundbreaking! This post excellently delineates its transformative capabilities across diverse sectors. It's awe-inspiring to contemplate how quantum technology will redefine problem-solving. #QuantumComputing #Innovation #TechRevolution", post_id: post8.id)
comment3_on_post8 = Comment.create(author_id: user3.id, text: "Quantum computing's impact on technology is monumental! This post vividly illustrates its potential application. It's fascinating to foresee how quantum computing will revolutionize our approach to solving complex problems. #QuantumComputing #TechAdvancements #Innovation", post_id: post8.id)
comment4_on_post8 = Comment.create(author_id: user4.id, text: "This post eloquently portrays the promise of quantum computing! It's inspiring to witness its potential application and the paradigm shift it will bring to problem-solving. Quantum computing indeed heralds a new era in technology. #QuantumComputing #TechInnovation #ParadigmShift", post_id: post8.id)
comment5_on_post8 = Comment.create(author_id: user5.id, text: "As a tech enthusiast, this post resonates deeply! Quantum computing's potential to revolutionize computing is remarkable. It's astonishing to imagine the exponential leap it will bring in solving complex problems. #QuantumComputing #TechRevolution #Innovation", post_id: post8.id)
comment6_on_post8 = Comment.create(author_id: user6.id, text: "The transformative power of quantum computing is brilliantly portrayed in this post! It's incredible to contemplate how it will redefine computational capabilities. Quantum computing truly holds the key to solving intricate problems. #QuantumComputing #TechInnovation #ProblemSolvers", post_id: post8.id)

# likes of post8
like1_on_post8 = Like.create(author_id: user1.id, post_id: post8.id)
like2_on_post8 = Like.create(author_id: user2.id, post_id: post8.id)
like3_on_post8 = Like.create(author_id: user3.id, post_id: post8.id)
like4_on_post8 = Like.create(author_id: user4.id, post_id: post8.id)
like5_on_post8 = Like.create(author_id: user5.id, post_id: post8.id)
like6_on_post8 = Like.create(author_id: user6.id, post_id: post8.id)
like7_on_post8 = Like.create(author_id: user1.id, post_id: post8.id)
like8_on_post8 = Like.create(author_id: user2.id, post_id: post8.id)

#***************************************************************************************************************************************************
################################################### post9 data created by user3 ###################################################################
#***************************************************************************************************************************************************

post9 = Post.create(title: 'Artificial Intelligence and Machine Learning', text: "# Exploring Artificial Intelligence and Machine Learning

Artificial Intelligence (AI) and Machine Learning (ML) have revolutionized the way computers learn, reason, and make decisions. These fields have transformed industries, from healthcare and finance to transportation and entertainment.

In this post, we delve into the foundations of AI and ML, exploring their inner workings and their impact on various domains. We'll discuss fundamental concepts like neural networks, deep learning, and reinforcement learning, and examine how these techniques enable computers to recognize patterns, make predictions, and perform tasks that were once exclusive to humans.

The application of AI and ML are far-reaching. In healthcare, they contribute to early disease detection and personalized medicine. In finance, they enhance fraud detection and algorithmic trading. In autonomous systems, they power self-driving cars and intelligent robots. And these are just a few examples.

As we explore the frontiers of AI and ML, we'll also address ethical considerations, such as privacy, bias, and transparency. Understanding the capabilities and limitations of these technologies is crucial for informed decision-making and responsible development.

Join me on this journey to uncover the incredible potential of AI and ML. Let's explore how these fields are shaping our present and paving the way for a future where intelligent systems augment our capabilities and drive innovation across industries. #ArtificialIntelligence #MachineLearning #TechInnovation
", author_id: user3.id)

# comments of post9
comment1_on_post9 = Comment.create(author_id: user1.id, text: "Artificial intelligence is the future of technology! This post brilliantly captures the essence of AI and its impact on various domains. It's incredible to witness how AI enables us to solve complex problems and drive innovation. #ArtificialIntelligence #TechInnovation #ProblemSolving", post_id: post9.id)
comment2_on_post9 = Comment.create(author_id: user2.id, text: "The transformative impact of AI is truly remarkable! This post effectively encapsulates its significance across diverse sectors. It's fascinating to see how AI reshapes industries and fosters innovation. #ArtificialIntelligence #Innovation #TechRevolution", post_id: post9.id)
comment3_on_post9 = Comment.create(author_id: user3.id, text: "The realm of AI is an evolving landscape! This post vividly portrays its transformative power across various domains. It's astonishing how AI fuels progress and shapes the future of technology. #ArtificialIntelligence #TechTransformation #Innovation", post_id: post9.id)
comment4_on_post9 = Comment.create(author_id: user4.id, text: "This post elegantly highlights the prowess of AI in problem-solving! It's inspiring to witness how AI-driven approaches steer advancements across industries. Truly, AI is at the forefront of innovation. #ArtificialIntelligence #Innovation #ProblemSolving", post_id: post9.id)
comment5_on_post9 = Comment.create(author_id: user5.id, text: "As an enthusiast in analytics, this post resonates deeply! AI's ability to extract insights is awe-inspiring. It's remarkable how AI-driven methodologies revolutionize problem-solving across diverse sectors. #ArtificialIntelligence #Insights #ProblemSolving", post_id: post9.id)
comment6_on_post9 = Comment.create(author_id: user6.id, text: "The transformative impact of AI is evident in this post! It's captivating to see how it reshapes problem-solving with data-backed insights. AI indeed fuels innovation and propels industries forward. #ArtificialIntelligence #Innovation #ProblemSolvers", post_id: post9.id)

# likes of post9
like1_on_post9 = Like.create(author_id: user1.id, post_id: post9.id)
like2_on_post9 = Like.create(author_id: user2.id, post_id: post9.id)
like3_on_post9 = Like.create(author_id: user3.id, post_id: post9.id)
like4_on_post9 = Like.create(author_id: user4.id, post_id: post9.id)
like5_on_post9 = Like.create(author_id: user5.id, post_id: post9.id)
like6_on_post9 = Like.create(author_id: user6.id, post_id: post9.id)

#***************************************************************************************************************************************************
################################################### post10 data created by user3 ###################################################################
#***************************************************************************************************************************************************

post10 = Post.create(title: 'Software Engineering', text: "# The Art of Software Engineering

Software engineering combines creativity, problem-solving, and technical skills to build robust and efficient software systems. In this post, we celebrate the artistry behind software engineering.

We'll discuss the software development life cycle, from requirements gathering and design to implementation, testing, and maintenance. We'll explore different software development methodologies, such as Agile and DevOps, and the tools and frameworks that streamline the development process.

Software engineering is not just about writing code; it's about building elegant and user-friendly solutions. We'll delve into the principles of clean code, modular design, and software architecture. We'll also address the importance of collaboration, version control, and documentation in creating sustainable and scalable software.

Join me as we appreciate the craftsmanship of software engineering. Let's explore the intersection of technology and art, where software engineers blend technical expertise with creative problem-solving to build software systems that power our digital world. #SoftwareEngineering #CodeCrafting #InnovationDriven
", author_id: user3.id)

# comments of post10
comment1_on_post10 = Comment.create(author_id: user1.id, text: "Software engineering is the backbone of our digital world! This post brilliantly captures the essence of software engineering and its impact on various domains. It's incredible to witness how software engineering enables us to build robust and efficient software systems. #SoftwareEngineering #CodeCrafting #InnovationDriven", post_id: post10.id)
comment2_on_post10 = Comment.create(author_id: user2.id, text: "The transformative impact of software engineering is truly remarkable! This post effectively encapsulates its significance across diverse sectors. It's fascinating to see how software engineering reshapes industries and fosters innovation. #SoftwareEngineering #Innovation #TechRevolution", post_id: post10.id)
comment3_on_post10 = Comment.create(author_id: user3.id, text: "The realm of software engineering is an evolving landscape! This post vividly portrays its transformative power across various domains. It's astonishing how software engineering fuels progress and shapes the future of technology. #SoftwareEngineering #TechTransformation #Innovation", post_id: post10.id)
comment4_on_post10 = Comment.create(author_id: user4.id, text: "This post elegantly highlights the prowess of software engineering in building robust software systems! It's inspiring to witness how software engineering-driven approaches steer advancements across industries. Truly, software engineering is at the forefront of innovation. #SoftwareEngineering #Innovation #RobustSystems", post_id: post10.id)
comment5_on_post10 = Comment.create(author_id: user5.id, text: "As an enthusiast in software development, this post resonates deeply! Software engineering's ability to build robust software systems is awe-inspiring. It's remarkable how software engineering-driven methodologies revolutionize problem-solving across diverse sectors. #SoftwareEngineering #RobustSystems #ProblemSolving", post_id: post10.id)
comment6_on_post10 = Comment.create(author_id: user6.id, text: "The transformative impact of software engineering is evident in this post! It's captivating to see how it reshapes problem-solving with robust software systems. Software engineering indeed fuels innovation and propels industries forward. #SoftwareEngineering #Innovation #ProblemSolvers", post_id: post10.id)

# likes of post10
like1_on_post10 = Like.create(author_id: user1.id, post_id: post10.id)
like2_on_post10 = Like.create(author_id: user2.id, post_id: post10.id)
like3_on_post10 = Like.create(author_id: user3.id, post_id: post10.id)
like4_on_post10 = Like.create(author_id: user4.id, post_id: post10.id)
like5_on_post10 = Like.create(author_id: user5.id, post_id: post10.id)
like6_on_post10 = Like.create(author_id: user6.id, post_id: post10.id)
like7_on_post10 = Like.create(author_id: user1.id, post_id: post10.id)
like8_on_post10 = Like.create(author_id: user2.id, post_id: post10.id)

#***************************************************************************************************************************************************
################################################### post11 data created by user4 ###################################################################
#***************************************************************************************************************************************************

post11 = Post.create(title: ' World of Cybersecurity', text: "# The Fascinating World of Cybersecurity

As technology advances, so do the challenges of securing our digital world. Cybersecurity plays a critical role in protecting our data, privacy, and digital infrastructure from threats.

In this post, we embark on a journey into the fascinating world of cybersecurity. We'll explore the dynamic field that addresses the ever-evolving landscape of cyber threats. From encryption and network security to ethical hacking and threat detection, we'll delve into the tools and techniques employed to safeguard our digital lives.

We'll discuss the importance of secure communication protocols, the role of firewalls and intrusion detection systems, and the principles of secure coding practices. We'll also examine emerging technologies like blockchain and their impact on cybersecurity.

Cybersecurity is not just about technical measures; it's a multidisciplinary field that combines technology, policy, and human behavior. We'll explore the human element, such as social engineering attacks and the importance of cybersecurity awareness and education.

Join me as we navigate the challenges and opportunities in the world of cybersecurity. Let's discuss strategies to protect our data, privacy, and digital infrastructure and work towards a safer digital future. #Cybersecurity #DataProtection #DigitalPrivacy
", author_id: user4.id)

# comments of post11
comment1_on_post11 = Comment.create(author_id: user1.id, text: "Cybersecurity is the backbone of our digital world! This post brilliantly captures the essence of cybersecurity and its impact on various domains. It's incredible to witness how cybersecurity enables us to protect our data, privacy, and digital infrastructure. #Cybersecurity #DataProtection #DigitalPrivacy", post_id: post11.id)
comment2_on_post11 = Comment.create(author_id: user2.id, text: "The transformative impact of cybersecurity is truly remarkable! This post effectively encapsulates its significance across diverse sectors. It's fascinating to see how cybersecurity reshapes industries and fosters innovation. #Cybersecurity #Innovation #TechRevolution", post_id: post11.id)
comment3_on_post11 = Comment.create(author_id: user3.id, text: "The realm of cybersecurity is an evolving landscape! This post vividly portrays its transformative power across various domains. It's astonishing how cybersecurity fuels progress and shapes the future of technology. #Cybersecurity #TechTransformation #Innovation", post_id: post11.id)
comment4_on_post11 = Comment.create(author_id: user4.id, text: "This post elegantly highlights the prowess of cybersecurity in protecting our digital world! It's inspiring to witness how cybersecurity-driven approaches steer advancements across industries. Truly, cybersecurity is at the forefront of innovation. #Cybersecurity #Innovation #DigitalProtection", post_id: post11.id)

# likes of post11
like1_on_post11 = Like.create(author_id: user1.id, post_id: post11.id)
like2_on_post11 = Like.create(author_id: user2.id, post_id: post11.id)
like3_on_post11 = Like.create(author_id: user3.id, post_id: post11.id)
like4_on_post11 = Like.create(author_id: user4.id, post_id: post11.id)
like5_on_post11 = Like.create(author_id: user5.id, post_id: post11.id)

#***************************************************************************************************************************************************
################################################### post12 data created by user4 ###################################################################
#***************************************************************************************************************************************************

post12 = Post.create(title: 'AI as a Social Threat', text: "# AI as a Social Threat

Artificial Intelligence (AI) has the potential to bring about significant advancements in various domains. However, it also poses certain social threats that need to be addressed.

In this post, we explore the implications of AI as a social threat. We discuss the ethical considerations surrounding AI, such as privacy, bias, and job displacement. We delve into the potential misuse of AI in surveillance, misinformation, and deepfake technologies.

It is crucial to have a comprehensive understanding of the social impact of AI. We examine the responsibility of AI developers and policymakers in ensuring the ethical and responsible use of AI. We also discuss the importance of public awareness and education in navigating the challenges posed by AI.

Join me as we analyze the social implications of AI. Let's foster a balanced approach that harnesses the benefits of AI while mitigating its potential threats. #ArtificialIntelligence #SocialImpact #Ethics
", author_id: user5.id)

# comments of post12
comment1_on_post12 = Comment.create(author_id: user1.id, text: "AI is a powerful tool that can transform our world! This post brilliantly captures the essence of AI and its impact on various domains. It's incredible to witness how AI enables us to solve complex problems and drive innovation. #ArtificialIntelligence #TechInnovation #ProblemSolving", post_id: post12.id)
comment2_on_post12 = Comment.create(author_id: user2.id, text: "The transformative impact of AI is truly remarkable! This post effectively encapsulates its significance across diverse sectors. It's fascinating to see how AI reshapes industries and fosters innovation. #ArtificialIntelligence #Innovation #TechRevolution", post_id: post12.id)
comment3_on_post12 = Comment.create(author_id: user3.id, text: "The realm of AI is an evolving landscape! This post vividly portrays its transformative power across various domains. It's astonishing how AI fuels progress and shapes the future of technology. #ArtificialIntelligence #TechTransformation #Innovation", post_id: post12.id)

# likes of post12
like1_on_post12 = Like.create(author_id: user1.id, post_id: post12.id)
like2_on_post12 = Like.create(author_id: user2.id, post_id: post12.id)
like3_on_post12 = Like.create(author_id: user3.id, post_id: post12.id)
