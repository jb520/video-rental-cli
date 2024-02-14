require 'minitest/autorun'
require './video_rental'


class VideoRentalTest < Minitest::Test
  def setup
    @video_rental = Video_rental.new
  end

  def test_rent_movie_success
    # Stub user input
    def @video_rental.gets; "Mission Impossible\n"; end
    assert_output(/Enjoy your Movie!/) { @video_rental.send(:rent_movie) }
  end

  def test_rent_movie_failure
    # Stub user input
    def @video_rental.gets; "Invalid Movie\n"; end
    assert_output(/I don't think we have that one. :/) { @video_rental.send(:rent_movie) }
  end

  def test_return_movie_success
    # Stub user input
    def @video_rental.gets; "Mission Impossible\n"; end
    # Rent a movie first
    @video_rental.send(:rent_movie)
    assert_output(/has been returned!/) { @video_rental.send(:return_movie) }
  end

  def test_return_movie_failure
    # Stub user input
    def @video_rental.gets; "Invalid Movie\n"; end
    assert_output(/You haven't rented that movie./) { @video_rental.send(:return_movie) }
  end

  def test_list_movies
    assert_output(/Here's what's available:/) { @video_rental.send(:list_movies) }
  end

  def test_list_rented_empty
    assert_output(/You haven't rented any Movies yet!/) { @video_rental.send(:list_rented) }
  end
end
