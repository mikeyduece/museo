require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/photograph'

class PhotographTest < Minitest::Test
  attr_reader :photograph

  def setup
    @photograph = Photograph.new({id: 1, name: "Rue Mouffetard, Paris (Boy with Bottles)",
                                  artist_id: 4, museum_id: 2, year: 1954})
  end

  def test_it_exists
    assert_instance_of Photograph, photograph
  end

  def test_it_can_return_photo_id
    assert_equal 1, photograph.id
  end

  def test_it_can_return_artist_id
    assert_equal 4, photograph.artist_id
  end

  def test_it_can_return_museum_id
    assert_equal 2, photograph.museum_id
  end

  def test_it_can_return_name_of_pic
    expected = "Rue Mouffetard, Paris (Boy with Bottles)"
    assert_equal expected, photograph.name
  end

  def test_it_returns_year_of_pic
    assert_equal 1954, photograph.year
  end
end
