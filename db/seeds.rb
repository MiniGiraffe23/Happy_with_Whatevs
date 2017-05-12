deck_context = { topic: "Nighthawks"}
Deck.create!(deck_context)
deck_context = { topic: "Otters"}
Deck.create!(deck_context)

card_context = { question: "What is a nighthawk's primary food source?", answer: "insects", deck_id: 1 }

Card.create!(card_context)

card_context = { question: "True or false?  Nighthawks are closely related to hawks.", answer: "false", deck_id: 1 }

Card.create!(card_context)

card_context = { question: "Where do Common Nighthawks spend the winter?", answer: "South America", deck_id: 1 }

Card.create!(card_context)

card_context = { question: "True or false?  Bullbat is another name for the Common Nighthawk.", answer: "true", deck_id: 1 }

Card.create!(card_context)

card_context = { question: "What is an otter's primary food source?", answer: "fish", deck_id: 2 }

Card.create!(card_context)

card_context = { question: "True or false? Otters spend the majority of their time on land.", answer: "true", deck_id: 2 }

Card.create!(card_context)

card_context = { question: "True of false? Otters are native to Australia.", answer: "false", deck_id: 2 }

Card.create!(card_context)

card_context = { question: "True or false?  Otters wear plaid pants in July?", answer: "true", deck_id: 2 }

Card.create!(card_context)

User.create!( username: "Jimmy John", email: "jj@gmail.com", encrypted_password: BCrypt::Password.create("cat"))

Round.create!( user_id: 1, deck_id: 1)

Guess.create!( card_id: 1, round_id: 1, correct: false )
Guess.create!( card_id: 2, round_id: 1, correct: true )
Guess.create!( card_id: 3, round_id: 1, correct: true )
Guess.create!( card_id: 4, round_id: 1, correct: true )
Guess.create!( card_id: 1, round_id: 1, correct: true )



