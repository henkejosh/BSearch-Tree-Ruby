class BSTNode
  attr_accessor :left, :right
  attr_reader :value

  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

class BinarySearchTree
  def initialize

  end

  def insert(value)

  end

  def find(value)

  end

  def inorder

  end

  def postorder

  end

  def preorder

  end

  def height

  end

  def min

  end

  def max

  end

  def delete(value)

  end

  def self.insert!(node, value)
    if node
      if value <= node.value
        self.insert!(node.left, value)
      else
        self.insert!(node.right, value)
      end
      return node
    else
      return BSTNode.new(value)
    end
  end

  def self.find!(node, value)

  end

  def self.preorder!(node)

  end

  def self.inorder!(node)

  end

  def self.postorder!(node)

  end

  def self.height!(node)

  end

  def self.max(node)

  end

  def self.min(node)

  end

  def self.delete_min!(node)

  end

  def self.delete!(node, value)

  end
end