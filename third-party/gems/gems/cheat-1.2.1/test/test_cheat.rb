# eh.  one day.
$:.unshift File.dirname(__FILE__) + "/..:lib"
require 'test/unit'
require 'fileutils'
require 'tempfile'
require 'cheat'

Sheets = Hash.new do |h,k| 
  k = k.to_s
  h[k] = YAML.load(File.read("test/fixtures/#{k}.yml")) rescue nil
end

class CheatTest < Test::Unit::TestCase

  def test_gets_from_host
  end

  def test_sets_to_cache
  end

  def test_gets_from_arbitrary_host
  end

  def test_gracefully_fail_if_host_bunk
  end

  def test_creates_cache_dir
  end

  def test_doesnt_create_cache_dir_if_exists
  end

  def test_loads_from_cache_if_exists
  end

  def test_gets_section_if_exists
  end

  def test_displays_everything_on_failed_section_search
  end

  def test_gets_recent_sheets
  end

  def test_gets_all_sheets
  end

  def test_uses_env_for_cache_dir
  end
end
