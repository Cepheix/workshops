# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#users
User.create!(firstname: "Jan",
             lastname: "Kowalski",
             password: "password",
             password_confirmation: "password",
             email: "asd@asd.com",
             admin: true)

User.create!(firstname: "Piotr",
             lastname: "Biurko",
             password: "password",
             password_confirmation: "password",
             email: "sdf@asd.com",
             admin: false)

User.create!(firstname: "Marcin",
             lastname: "Piekarz",
             password: "password",
             password_confirmation: "password",
             email: "dfg@asd.com",
             admin: false)

User.create!(firstname: "Wojciech",
             lastname: "Mur",
             password: "password",
             password_confirmation: "password",
             email: "fgh@asd.com",
             admin: false)

User.create!(firstname: "Mateusz",
             lastname: "Okno",
             password: "password",
             password_confirmation: "password",
             email: "ghj@asd.com",
             admin: false)

#Categories

Category.create!(name: "fantasy")

Category.create!(name: "action")

Category.create!(name: "comedy")

Category.create!(name: "drama")

#Products

Product.create!(title: "Hobbit trilogy",
                description: "The complete adventures of Bilbo Baggins in comprising The Hobbit: An Unexpected Journey, The Hobbit: The Desolation Of Smaug and The Hobbit: The Battle Of The Five Armies, based on the book by JRR Tolkein. Wise wizard Gandalf The Grey (Sir Ian McKellen) recruits Bilbo Baggins (Martin Freeman) to join a 13-strong company of dwarves led by Thorin Oakenshield (Richard Armitage), who intend to reclaim their lost gold from the dragon Smaug (voiced by Benedict Cumberbatch) in his mountain lair. En route, the plucky travellers encounter Gollum (Andy Serkis), Bard the Bowman (Luke Evans), elf warrior Legolas (Orlando Bloom), a shape-shifter called Beorn (Mikael Persbrandt) and a nest of giant spiders. ",
                price: 30,
                user_id: 1,
                category_id: 1)

Product.create!(title: "Black hawk down",
                description: "Mogadishu, Somalia, 1993. US Rangers and Delta Force troops descend on a stronghold to snatch lieutenants in Gen Aidid's Habr Gidr clan. The mission involves some 140 men, but when a Black Hawk helicopter is shot down chaos ensues. Surrounded by angry hordes, the troops are trapped in a nightmarish 15-hour firefight in which nearly a thousand Somalis are killed. Scott's film is drawn in harrowingly accurate detail (surprising for an all-star Bruckheimer production) from Mark Bowden's authoritative minute-by-minute account of the Battle of the Black Sea. There's zero backstory, and the last two hours reconstruct the battle as experienced by everyone involved. On a technical level this is accomplished, credible, and (almost) devoid of sentimentality. If you want to know what combat feels like, this is hardcore. Scott honours the troops and doesn't shy from the confusion and cock-up of this misadventure. He also does a reasonable job sketching the complicated and contradictory political context, but attempts to bring in the odd Somali perspective are grossly inadequate. ",
                price: 15.00,
                user_id: 2,
                category_id: 2)

Product.create!(title: "Inception",
                description: "Funny things, dreams. Fascinating for the dreamer, but as dull as a late morning in Slough for anybody else, unless, of course, your guide is Freud. Or, as it turns out, Christopher Nolan, the 39-year-old British director of ‘Memento’ and ‘The Dark Knight’, whose solution to the boredom of other people’s dreams is to collide their woozy, ever-changing, upside-down and roundabout nature with the thrust of a fast-paced, men-on-a-mission movie and a startling visual language that mirrors their strangeness. Better still, the dreams preferred by Nolan include images of Paris folding in on itself and a trackless train thundering through a city. The limited, sleepworld excitements of retaking your A levels ad infinitum or forever missing a flight at the airport don’t figure here.",
                price: 15.00,
                user_id: 2,
                category_id: 1)

Product.create!(title: "The dark knight",
                description: "Christopher Nolan follows the sombre origin myth of ‘Batman Begins’ with a less introspective, more frenetic sequel. Once again there are lots of ideas on the boil, this time mostly to do with community action and leadership, but an endless flow of bullets, bombs and bat business drowns out most debate. Right from the off, Nolan sidesteps the analyst’s couch and plunges us straight into battle.",
                price: 20.00,
                user_id: 2,
                category_id: 1)

#reviews

Review.create!(content: "Great film",
               rating: 4.0,
                user_id: 1,
                product_id: 1)

Review.create!(content: "Quite good",
               rating: 3.0,
               user_id: 1,
               product_id: 1)

Review.create!(content: "Brillant",
               rating: 5.0,
               user_id: 1,
               product_id: 1)

Review.create!(content: "Great film",
               rating: 4.0,
               user_id: 3,
               product_id: 2)

Review.create!(content: "Quite good",
               rating: 3.0,
               user_id: 3,
               product_id: 2)

Review.create!(content: "Brillant",
               rating: 5.0,
               user_id: 2,
               product_id: 2)

Review.create!(content: "Great film",
               rating: 4.0,
               user_id: 2,
               product_id: 3)

Review.create!(content: "Quite good",
               rating: 3.0,
               user_id: 1,
               product_id: 3)

Review.create!(content: "Brillant",
               rating: 5.0,
               user_id: 2,
               product_id: 3)