require 'byebug'

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
        node.left = self.insert!(node.left, value)
      else
        node.right = self.insert!(node.right, value)
      end
      return node
    else
      BSTNode.new(value)
    end
  end

  def self.find!(node, value)
    return nil unless node
    return node if value == node.value

    if node.value > value
      self.find!(node.left, value)
    else
      self.find!(node.right, value)
    end
  end

  def self.preorder!(node)

  end

  def self.inorder!(node)
    return [] unless node
    sorted = []

    if node.left.nil?
      # debugger
      sorted << node.value
      sorted += self.inorder!(node.right)
    else
      left = self.inorder!(node.left)
      right = self.inorder!(node.right)
      sorted = sorted + left + right
    end
    # sorted_rest = left + right
    return sorted

    # if node.left
    #   if node.left.left.nil
    #     sorted << node.left
    #     sorted << node
    #     sorted << node.right if node.right
  end

  def self.postorder!(node)

  end

  def self.height!(node)
    return -1 unless node
    height = 0

    if node
      height += 1
      left = height + self.height!(node.left)
      right = height + self.height!(node.right)
    end

    left > right ? left : right
  end

  def self.max(node)
    return nil unless node
    return node unless node.right
    self.max(node.right)
  end

  def self.min(node)
    return nil unless node
    return node unless node.left
    self.min(node.left)
  end

  def self.delete_min!(node)
    # SOOO... this won't work if the node is the Tree Head. Fix it.
    return nil unless node
    return node.right unless node.left

    node.left = self.delete_min!(node.left)
    node
  end

  def self.delete!(node, value)
    return nil unless node
    return node = nil unless node.right || node.left

    if value < node.value
      node.left = self.delete!(node.left, value)
    elsif value > node.value
      node.right = self.delete!(node.right, value)
    end

    return node if node.value == value
  end
end
