require_relative "movie"

class Video_Rental
  def initialize
    @movies = []
    @rented = []
  end

  def run
    loop do
      puts "\n"
      puts "Welcome to Video Rental CLI!"
      puts "What would you like to do?"
      puts "1. Rent Movie"
      puts "2. Return Movie"
      puts "3. List available Movies"
      puts "4. Leave"
      print "Enter a number to select an option: "
      option = gets.chomp.to_i
      puts "\n"
      case option
      when 1
        rent_movie
      when 2
        return_movie
      when 3
        list_movies
      when 4
        puts "See you next time!"
        break
      else
        puts "Sorry, I'm not sure what that means. Please try again."
      end
    end
  end

  private

  def rent_movie
    #take movie from movies and put it in rented
  end

  def return_movie
    #take movie from rented and put it in movies
  end

  def list_movies
    #list all movies in movies
  end
end
  


      
