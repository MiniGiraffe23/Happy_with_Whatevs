get '/decks' do
  @decks = Deck.order(:topic)
  erb :'/decks/index'
end

get '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.find(params[:card_id])
  erb :'cards/show'
end


#if answer is true.  Update Guess.correct to true
#remove card from deck
#show answer is correct onpage button to go tonext question

#if wrong display wrong.  put card in back. display correc submit button question
post '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find(params([:deck_id]))
  @card = deck.cards.find(params[:card_id])
  if params[:user_guess] == @card.answer
    card.guess.correct = true

  else
    thigns are false
  end
end
