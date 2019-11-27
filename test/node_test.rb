require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/node'

class NodeTest < Minitest::Test

  def test_it_exist
    node = Node.new(43, "Forrest Gump")
    assert_instance_of Node, node
  end

  def test_it_has_a_score
    node = Node.new(43, "Forrest Gump")
    assert_equal 43, node.score
  end

  def test_it_has_a_title
    node = Node.new(43, "Forrest Gump")
    assert_equal "Forrest Gump", node.title
  end

  def test_is_initialized_with_empty_left_element
    node = Node.new(43, "Forrest Gump")
    assert_nil node.left_node
  end

  def test_is_initialized_with_empty_right_element
    node = Node.new(43, "Forrest Gump")
    assert_nil node.right_node
  end


end
