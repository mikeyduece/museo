require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/curator'

class CuratorTest < Minitest::Test

  attr_reader :curator

  def setup
    @curator = Curator.new
  end

  def test_it_exists
    assert_instance_of Curator, curator
  end

  def test_artists_empty_at_start
    assert_equal [], curator.artists
  end

  def test_museums_empty_at_start
    assert_equal [], curator.museums
  end

  def test_pics_empty_at_start
    assert_equal [], curator.photographs
  end

  def test_it_can_add_museums
    curator.add_museum({name: "MoMA"})
    assert_instance_of Museum, curator.museums[0]
  end

  def test_it_can_count_museums
    curator.add_museum({name: "MoMA"})
    assert_equal 1, curator.museums.count
  end

  def test_it_can_see_museum_id
    curator.add_museum({name: "MoMA"})
    assert_equal 1, curator.museums.first.id
  end

  def test_it_can_add_artists
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, curator.artists.count
  end

  def test_it_can_read_artist_id
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_equal 1, curator.artists.first.id
  end

  def test_it_can_see_artist_array
    curator.add_artist({name: "Ansel Adams", born: 1902, died: 1984, country: "United States"})
    assert_instance_of Artist, curator.artists[0]
  end

  def test_it_can_add_photograph
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})
    assert_instance_of Photograph, curator.photographs[0]
  end

  def test_it_can_count_pics
    curator.add_photograph({name: "Moonrise, Hernandez", artist_id: 1, museum_id: 1, year: 1941})

  end

end
