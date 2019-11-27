class Node

  attr_reader :score, :title
  attr_accessor :left_node, :right_node

  def initialize(score, title)
    @score = score
    @title = title
    @left_node = nil
    @right_node = nil
  end

  def next_node(node)
    if node == nil
      return node
    elsif self.score <= node.score
      return node.left_node
    else
      return node.right_node
    end
  end

end
