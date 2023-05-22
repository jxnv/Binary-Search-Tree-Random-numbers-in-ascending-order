# Binary Search Tree

This is a simple implementation of a Binary Search Tree in Ruby. It provides the basic functionality to create a binary search tree, insert values into it, and display the tree structure.

## Usage

1. Create a new instance of the `BinarySearchTree` class:

   ```ruby
   bst = BinarySearchTree.new
Insert values into the binary search tree using the insert method:

ruby
Copy code
bst.insert(value)
Replace value with the value you want to insert into the tree.

Display the tree structure using the display method:

ruby
Copy code
bst.display
This will print the tree structure to the console, showing the values of each node and their relationships.

Example
Here is an example of how to use this binary search tree:

ruby
Copy code
bst = BinarySearchTree.new

# Insert values into the tree
bst.insert(5)
bst.insert(3)
bst.insert(7)
bst.insert(1)
bst.insert(4)
bst.insert(6)
bst.insert(8)

# Display the tree structure
puts "Binary Search Tree:"
bst.display
This will create a binary search tree with the values 5, 3, 7, 1, 4, 6, and 8, and display its structure as follows:

sql
Copy code
Binary Search Tree:
└── 8
    ├── 7
    │   ├── 6
    │   └── ┌── 5
    │       ├── 4
    │       └── ┌── 3
    │           └── ┌── 1
    └── ┌── 3
        └── ┌── 1
Note
This implementation assumes that values inserted into the tree are unique. Duplicate values may affect the accuracy of the binary search tree.
