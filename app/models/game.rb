class Game < ActiveRecord::Base
  has_many(:reviews) #indicates that one game has many reviews and thus the reviews symbolm has to be in plural
  #This achieves the one to many relationship and ensbles retriavl of all reviews for a game
  #has_many goes to the owner table
  #we hence use the reviews instance method to fetch all these reviews - naming convention

  ###THIS METHOD WRITTEN CUSTOMARY##
#   def reviews
#     Review.where(game_id:self.id)  #returns an array of all the reviews associated with a  given game.
#     #Where always returns an array
#   end
end
