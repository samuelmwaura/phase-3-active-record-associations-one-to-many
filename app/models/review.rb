class Review < ActiveRecord::Base
      # def game #this is a custom method to display the details of the game that the review belongs to. This is an instance method
    #     Game.find(self.game_id) #However this is so common that it has been abstracted into a macro by active record
    # end

    belongs_to(:game)  #this is a macro that creates a instance method for fetching the owner of an instance of this class.It is inherited
    #the passed in symbol means that this instance belongs to given single game and thus has to be singular in naming
    #The belongs_to macro has to be in the table that has the foreign key i.e the owned table 
end
