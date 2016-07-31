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
    @root = nil
  end

  def insert(value)
    if !@root
      @root = BSTNode.new(value)
    else
      BinarySearchTree.insert!(@root, value)
    end
  end

  def find(value)
    BinarySearchTree.find!(@root, value)
  end

  def inorder
    BinarySearchTree.inorder!(@root)
  end

  def postorder
    BinarySearchTree.postorder!(@root)
  end

  def preorder
    BinarySearchTree.preorder!(@root)
  end

  def height
    BinarySearchTree.height!(@root)
  end

  def min
    BinarySearchTree.min(@root)
  end

  def max
    BinarySearchTree.max(@root)
  end

  def delete(value)
    BinarySearchTree.delete!(@root, value)
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
      BinarySearchTree.find!(node.left, value)
    else
      BinarySearchTree.find!(node.right, value)
    end
  end

  def self.preorder!(node)
    return [] unless node
    ordered = []
    ordered << node.value
    ordered += BinarySearchTree.preorder!(node.left)
    ordered += BinarySearchTree.preorder!(node.right)
  end

  def self.inorder!(node)
    return [] unless node
    sorted = []

    if node.left.nil?
      sorted << node.value
      sorted += BinarySearchTree.inorder!(node.right)
    else
      left = BinarySearchTree.inorder!(node.left) + [node.value]
      right = BinarySearchTree.inorder!(node.right)
      sorted = sorted + left + right
    end

    return sorted
  end

  def self.postorder!(node)
    return [] unless node
    sorted = []
    sorted << node.value if node.left.nil?

    left = BinarySearchTree.postorder!(node.left)
    right = BinarySearchTree.postorder!(node.right)

    left + right + [node.value]
  end

  def self.height!(node)
    return -1 unless node
    height = 0

    if node
      height += 1
      left = height + BinarySearchTree.height!(node.left)
      right = height + BinarySearchTree.height!(node.right)
    end

    left > right ? left : right
  end

  def self.max(node)
    return nil unless node
    return node unless node.right
    BinarySearchTree.max(node.right)
  end

  def self.min(node)
    return nil unless node
    return node unless node.left
    BinarySearchTree.min(node.left)
  end

  def self.delete_min!(node)
    # SOOO... this won't work if the node is the Tree Head. Fix it.
    return nil unless node
    return node.right unless node.left

    node.left = BinarySearchTree.delete_min!(node.left)
    node
  end

  def self.delete!(node, value)
    return nil unless node
    return node = nil unless node.right || node.left

    if value < node.value
      node.left = BinarySearchTree.delete!(node.left, value)
    elsif value > node.value
      node.right = BinarySearchTree.delete!(node.right, value)
    end

    return node if node.value == value
  end
end
