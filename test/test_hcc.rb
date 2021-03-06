require 'minitest/autorun'
require 'HtmlCodeCleaner'


class HtmlCodeCleanerTest < Minitest::Test
  def test_1
    assert_equal "X", HtmlCodeCleaner.clean_string("&#88;")
  end

  def test_2
    assert_equal "Hi", HtmlCodeCleaner.clean_string("Hi")
  end

  def test_3
    assert_equal "#Hi", HtmlCodeCleaner.clean_string("&#35;Hi")
  end

  def test_4
    assert_equal "#1", HtmlCodeCleaner.clean_string("&#35;&#49;")
  end

  def test_5
    assert_equal "# 1", HtmlCodeCleaner.clean_string("&#35; &#49;")
  end


end
