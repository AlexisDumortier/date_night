require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/binary_search_tree'
require_relative '../lib/node'

class BinarySearchTreeTest < Minitest::Test

  def test_it_exist
    tree = BinarySearchTree.new
    assert_instance_of BinarySearchTree, tree
  end

  def test_insert_returns_tree_depth
    tree = BinarySearchTree.new
    assert_equal 0, tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 1, tree.insert(16, "Johnny English")
    assert_equal 1, tree.insert(92, "Sharknado 3")
    assert_equal 2, tree.insert(50, "Hannibal Buress: Animal Furnace")
  end

  def test_include
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert tree.include?(92)
    refute tree.include?(51)
  end

  def test_can_return_depth_of_node
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    assert_equal 0, tree.depth_of(61)
    tree.insert(16, "Johnny English")
    assert_equal 1, tree.depth_of(16)
    tree.insert(92, "Sharknado 3")
    assert_equal 1, tree.depth_of(92)
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    assert_equal 2, tree.depth_of(50)
    assert_nil tree.depth_of(12)
  end

  def test_returns_max
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    max_score = {"Sharknado 3" => 92}
    assert_equal max_score, tree.max
  end

  def test_returns_min
    tree = BinarySearchTree.new
    tree.insert(61, "Bill & Ted's Excellent Adventure")
    tree.insert(16, "Johnny English")
    tree.insert(92, "Sharknado 3")
    tree.insert(50, "Hannibal Buress: Animal Furnace")
    min_score = {"Johnny English" => 16}
    assert_equal min_score, tree.min
  end

  def test_it_sorts_array
    

  end


end
