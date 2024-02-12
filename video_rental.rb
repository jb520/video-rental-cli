require_relative 'movie'

class Video_rental
  def initialize
    default_movie_list = []
    @movies = default_movie_list
    @rented = []

    default_movie_list.push(Movie.new("Mission Impossible", "Action"))
    default_movie_list.push(Movie.new("Terminator", "Action"))
    default_movie_list.push(Movie.new("Napoleon Dynamite", "Comedy"))
    default_movie_list.push(Movie.new("Superbad", "Comedy"))
    default_movie_list.push(Movie.new("Hereditary", "Horror"))
    default_movie_list.push(Movie.new("Incantation", "Horror"))
    default_movie_list.push(Movie.new("Nightcrawler", "Thriller"))
    default_movie_list.push(Movie.new("Se7en", "Thriller"))

  

  end

  def run
    loop do
      puts "\n"
      puts "Welcome to Video Rental CLI!"
      puts "What would you like to do?"
      puts "1. Rent Movie"
      puts "2. Return Movie"
      puts "3. List available Movies"
      puts "4. List rented Movies"
      puts "5. Leave"
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
        list_rented
      when 5
        puts "See you next time!"
        break
      else
        puts "Sorry, I'm not sure what that means. Please try again."
      end
    end
  end

  private

  def find_movie(name)
    @movies.find { |movie| movie.title == name}
  end

  def rent_movie
    #take movie title from movies and put it in rented array
    print "Which Movie would you like? "
    choice = gets.chomp

    movie_search = find_movie(choice)

    if movie_search
      @rented.push(movie_search.title)
      puts "Enjoy your Movie!"
    else
      puts "I don't think we have that one. :("
    end

  end

  def return_movie
    #remove title from rented array
    print "What would you like to return? "
    
    give_back = gets.chomp
    @rented.delete(give_back)

    puts "#{give_back} has been returned!"
  end

  def list_movies
    #list all movies in movies
    puts "Here's what's available:"
    @movies.each do |movie|
      puts movie
    end
  end

  def list_rented
    #list all movies in rented
    if @rented.length == 0
      puts "You haven't rented any Movies yet!"
    else
      puts "Here's your list:"
      @rented.each do |movie|
        puts movie
      end
    end
  end
end
