class BinarySearchTree

  attr_accessor :start_node, :depth

  def initialize
    @depth = 0
    @tree_data = nil
    @start_node = nil
  end

  def insert(score, title)
    node = Node.new(score, title)
    current_node = self.start_node
    depth_node = 0
    until node.next_node(current_node) == nil
      current_node = node.next_node(current_node)
      depth_node +=1
    end
    if current_node == nil
      self.start_node = node
    elsif node.score < current_node.score
      current_node.left_node = node
      depth_node += 1
    else
      current_node.right_node = node
      depth_node += 1
    end
    depth_node
  end

  def include?(key)
    searched_node = Node.new(key, "")
    current_node = self.start_node
    until searched_node.next_node(current_node) == nil || current_node.score == key
      current_node = searched_node.next_node(current_node)
    end
    return current_node.score == key
  end

end
