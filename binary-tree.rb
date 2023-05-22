class Node
  attr_accessor :value, :left, :right

# references between nodes
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end

# The structure of the tree itself

class BinarySearchTree
  attr_accessor :root

  def initialize
    @root = nil
  end

  def insert(value)
    node = Node.new(value)
    if @root.nil?
      @root = node
    else
      insert_node(@root, node)
    end
  end

# insert new values into the tree and display branches
  def insert_node(current_node, new_node)
    if new_node.value < current_node.value
      if current_node.left.nil?
        current_node.left = new_node
      else
        insert_node(current_node.left, new_node)
      end
    else
      if current_node.right.nil?
        current_node.right = new_node
      else
        insert_node(current_node.right, new_node)
      end
    end
  end

  def display(node = @root, prefix = '', is_left = true)
    return if node.nil?

    display(node.right, "#{prefix}#{is_left ? '│   ' : '    '}", false)
    puts "#{prefix}#{is_left ? '└── ' : '┌── '}#{node.value}"
    display(node.left, "#{prefix}#{is_left ? '    ' : '│   '}", true)
  end
end

# generate an array of 1000 random numbers between 1 and 10,000,000

random_numbers = Array.new(1000) { rand(1..10000000) }

bst = BinarySearchTree.new
# insert each random number into the binary search tree
random_numbers.each do |number|
  bst.insert(number)
end

#display search tree
puts "Binary Search Tree:"
bst.display
