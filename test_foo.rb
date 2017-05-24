$:.unshift File.dirname(__FILE__)
require 'minitest/autorun'
require 'foo'

# MiniTest::Unit.autorun

class TestFoo < Minitest::Test
  def setup
    @foo = Foo.new
  end
  
  def teardown
    @foo = nil
  end

  def test_foo
    assert_equal "foo", @foo.foo
  end

  def test_bar
    assert_equal "bar", @foo.bar
  end
end
