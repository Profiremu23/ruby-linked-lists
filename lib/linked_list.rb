# frozen_string_literal: true

## To represent the missing linked list class for Ruby
class LinkedList
  # Some constant variables for the linked list to work
  def initialize
    @list = []
    @head = @list[0]
    @tail = @list[-1]
  end

  # It will add a new Node to the end of the list
  def apprend(value)
    prepend(value)
    @tail = @list[-1]
  end

  # It will add a new Node to the beginning of the list
  def prepend(value)
    @list << Node.new(value)
    @head = @list[0]
  end

  def size
    @list.size
  end

  # It will automatically sets a head node if the list has a valid one
  def head
    @head
  end

  # It will automatically sets a tail node if the list has a valid one
  def tail
    @tail
  end

  def at(index)
    @list[index]
  end

  def pop
    @list.pop
    tail
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end

## The building block for any linked list
Node = Struct.new(:value, :next_node)

# For debugging purposes
random_list = LinkedList.new
p random_list.head
p random_list.apprend('Alice')
p random_list.tail
p random_list.apprend('Jeanne')
p random_list.head
p random_list.tail

#node1 = Node.new # To test Node.value's storage capability
#p node1.value
#node1.value = 'Hello'
#p node1.value

#node2 = Node.new("It's me") # For testing out LinkedList connectivity
#node3 = Node.new('Profiremu23')
#node4 = Node.new("I'm in Spain without the S")

#node1.next_node = node2
#node2.next_node = node3
#node3.next_node = node4

#p node1.next_node.value
#p node2.next_node.value
#p node3.next_node.value
#p node4.next_node
#p node1.next_node.next_node.next_node.value
#p node1
#a = []
#a << node1
#p a
