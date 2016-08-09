#BSearch-Tree-Ruby
#Notes

##Binary Search Trees
###COMPLEXITY
  1. TIME: Avg O(log n), WC O(n)
  2. SPACE: WC O(n)

###WHAT?
  A tree in which every node's left subtree contains only elements smaller than it (or equal) and its right subtree contains only elements greater than it.

###WHY?
  Gives us O(log n) time complexity for basic operations if we can keep it 'balanced', meaning **the heights of every node's subtrees differ by <= 1**.

##AVL Trees
###WHAT?
  A subclass of BST that automatically restructures itself on element entry/deletion to ensure it is always 'balanced':

###WHY?
  Useful because basic BST's degenerate into linear data structures (e.g. singly linked lists) in 3 cases. If:
  1. Data is inserted in ascending sorted order
  2. Data is inserted in descending sorted order
  3. Data is inserted in alternating order from the outside in

  ```
0                                  3          0

   \                              /              \

     1                          2                  3

       \          or          /          or      /

         2                  1                  1

           \              /                      \

             3          0                          2
```
###HOW?
asd
