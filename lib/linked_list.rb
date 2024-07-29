# frozen_string_literal: true

# To represent the missing linked list class for Ruby
class LinkedList
  def apprend(value)
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end

# The building block for any linked list
Node = Struct.new(:value, :next_node)

# For debugging purposes
node1 = Node.new # To test Node.value's storage capability
p node1.value
node1.value = 'Hello'
p node1.value

node2 = Node.new("It's me") # For testing out LinkedList connectivity
node3 = Node.new('Profiremu23')
node4 = Node.new("I'm in Spain without the S")

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4

p node1.next_node.value
p node2.next_node.value
p node3.next_node.value
p node4.next_node
p node1.next_node.next_node.next_node.value
