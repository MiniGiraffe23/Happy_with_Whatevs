get '/decks' do
  @decks = Deck.order(:topic)
  @cards = Card.new
  erb :'/decks/index'
end

get '/decks/:deck_id/cards/next' do
  p params
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.all.sample
  erb :'cards/show'
end

# get '/decks/:deck_id/cards/' do
#   redirect "/decks/#{deck.id}/cards/#{card.id}"
# end

#if answer is true.  Update Guess.correct to true
#remove card from deck
#show answer is correct onpage button to go tonext question

#if wrong display wrong.  put card in back. display correc submit button question
put '/decks/:deck_id/cards/:id' do
  @deck = Deck.find(params[:deck_id])
  @card = @deck.cards.find(params[:id])
 @card
  if params[:user_guess] == @card.answer
    @card.guesses.update_attributes(params[correct: true])
  # else
  #   @card.guesses.update_attributes(params[:correct])
  end
  redirect "/decks/#{@deck.id}/cards/next"
end

