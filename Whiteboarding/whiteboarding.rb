require 'byebug'

# PROBLEM 1

# Write a function, sumList, that takes in the head of a linked list containing numbers as an argument. The function should return the total sum of all values in the linked list.

# class Node
#    attr_accessor :val, :next_node

#    def initialize(val, next_node = nil)
#      @val = val
#      @next_node = next_node
#    end
#  end

# test_00:
# a = Node.new(2)
# b = Node.new(8)
# c = Node.new(3)
# d = Node.new(-1)
# e = Node.new(7)

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e

# // 2 -> 8 -> 3 -> -1 -> 7

# sum_list(a) // 19

# test_01:
# x = Node.new(38)
# y = Node.new(4)

# x.next_node = y

# // 38 -> 4

# sumList(x) // 42

# test_02:
# a = Node.new(100)

# a.next_node = 100

# // 100

# sumList(a) // 100

# test_03:
# sumList(nil) // 0

# PROBLEM 2

# Write a function, longestStreak, that takes in the head of a linked list as an argument. The function should return the length of the longest consecutive streak of the same value within the list.

# test_00:

# a = Node.new(5)
# b = Node.new(5)
# c = Node.new(7)
# d = Node.new(7)
# e = Node.new(7)
# f = Node.new(6)

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e
# e.next_node = f

# // 5 -> 5 -> 7 -> 7 -> 7 -> 6

# longest_streak(a) // 3

# test_01:

# a = Node.new(4)

# // 4

# longest_streak(a) // 1

# test_02:

# longest_streak(nil) // 0

# PROBLEM 2

# Write a function, reverseList, that takes in the head of a linked list as an argument. The function should reverse the order of the nodes in the linked list in-place and return the new head of the reversed linked list.

# HINT: you may consider using variables that point to the previous, current, and next node in the linked list.

# test_00:

# a = Node.new("a")
# b = Node.new("b")
# c = Node.new("c")
# d = Node.new("d")
# e = Node.new("e")
# f = Node.new("f")

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e
# e.next_node = f

# // a -> b -> c -> d -> e -> f

# reverse_list(a) // f -> e -> d -> c -> b -> a

# test_01:

# a = Node.new("a")
# b = Node.new("b")

# a.next_node = b

# // a -> b 

# reverse_list(a) // b -> a 

# test_02:

# a = Node.new("a")

# // a

# reverse_list(a) // a 

# Write a function, zipperLists, that takes in the head of two linked lists as arguments. The function should zipper the two lists together into single linked list by alternating nodes. If one of the linked lists is longer than the other, the resulting list should terminate with the remaining nodes. The function should return the head of the zippered linked list.

# Do this in-place, by mutating the original Nodes.

# You may assume that both input lists are non-empty.

# PROBLEM 4

# test_00:

# a = Node.new("a")
# b = Node.new("b")
# c = Node.new("c")

# a.next_node = b
# b.next_node = c

# // a -> b -> c

# x = Node.new("x")
# y = Node.new("y")
# z = Node.new("z")

# x.next_node = y
# y.next_node = z

# // x -> y -> z

# zipper_lists(a, x);
# // a -> x -> b -> y -> c -> z

# test_01:

# a = Node.new("a")
# b = Node.new("b")
# c = Node.new("c")
# d = Node.new("d")
# e = Node.new("e")
# f = Node.new("f")

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e
# e.next_node = f

# // a -> b -> c -> d -> e -> f

# x = Node.new("x")
# y = Node.new("y")
# z = Node.new("z")

# x.next_node = y
# y.next_node = z

# // x -> y -> z

# zipper_lists(a, x);
# // a -> x -> b -> y -> c -> z -> d -> e -> f



















## Problem 1
# class Node
#    attr_accessor :val, :next_node

#    def initialize(val, next_node = nil)
#      @val = val
#      @next_node = next_node
#    end
#  end

# def sum_list(head)

#     count = 0

#     count += head.val
#     while head.next_node
#         head = head.next_node
#         count+= head.val
#     end
#     count
# end

# a = Node.new(2)
# b = Node.new(8)
# c = Node.new(3)
# d = Node.new(-1)
# e = Node.new(7)

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e

# p sum_list(b)

# Problem 2

class Node
   attr_accessor :val, :next_node

   def initialize(val, next_node = nil)
     @val = val
     @next_node = next_node
   end
 end

def longest_streak(head)
    count = 0
    temp_count = 1

    until head.next_node == nil
        # debugger
        if head.val == head.next_node.val
            temp_count += 1
        else
            if count < temp_count
                count = temp_count
            end
            temp_count = 1
        end
        head = head.next_node 
    end

    if count < temp_count
        count = temp_count
    end
    count
end

a = Node.new(5)
b = Node.new(5)
c = Node.new(7)
d = Node.new(7)
e = Node.new(7)
f = Node.new(7)

a.next_node = b
b.next_node = c
c.next_node = d
d.next_node = e
e.next_node = f

p longest_streak(a)