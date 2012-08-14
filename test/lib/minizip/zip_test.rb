require 'minitest/autorun'
require 'minizip'

class ZipTest < MiniTest::Unit::TestCase

  def test_filename_with_whitespace
    Minizip::Zip.extract("fixtures/starcraft replays.zip", :directory => 'tmp/')
    assert File.exists?("tmp/starcraft replays/winner.sc2")
    FileUtils.rm_rf('tmp/starcraft replays')
  end

end
