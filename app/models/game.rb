class Game < ActiveRecord::Base
#has_many os a macro that genrates the instance method of the name passed as a symbol
  has_many(:reviews) #indicates that one game has many reviews and thus the reviews symbolm has to be in plural
  #This achieves the one to many relationship and ensbles retriavl of all reviews for a game
  #has_many goes to the owner table
  #we hence use the reviews instance method to fetch all these reviews - naming convention
  #We can also create reviews associated to the game instance because of this macro where we pass in an instance of a gme directly

  ###THIS METHOD WRITTEN CUSTOMARY##
#   def reviews
#     Review.where(game_id:self.id)  #returns an array of all the reviews associated with a  given game.
#     #Where always returns an array
#   end
end
