# frozen_string_literal: true

## To represent the missing linked list class for Ruby
class LinkedList
  # Some constant variables for the linked list to work
  def initialize
    @list = []
    @head = @list[0]
    @tail = @list[-1]
  end

  # This will add a new Node to the end of the linked list
  def apprend(value)
    @list << Node.new(value)
    @list[-2].next_node = @list[-1] if @list.size > 1
    @tail = @list[-1]
  end

  # This will add a new Node to the beginning of the linked list
  def prepend(value)
    @list.insert(0, Node.new(value))
    prev_head = @list[1]
    @list[0].next_node = prev_head if @list.size > 1
    @head = @list[0]
  end

  # This will get the accurate size of the current linked list
  def size
    @list.size
  end

  # This will automatically sets a head node if the linked list has a valid node to do
  def head
    @head = @list[0]
  end

  # This will automatically sets a tail node if the linked list has a valid node to do
  def tail
    @tail = @list[-1]
  end

  # This will display a Node element by entering it's index within the linked list
  def at(index)
    @list[index]
  end

  # This will delete the last element from the linked list
  def pop
    p @list.pop
  end

  # This will return a boolean value (true/false) depending on the given value's presentence in the linked list
  def contains?(value)
    # until element.include?(value)
    #  @list.count do |element|
    #    p element.include?(value)
    #  end
    # end
  end

  # This will find the given value's index position within it's linked list
  def find(value)
  end

  # This will give a more organized and cleaner look to represent a linked list in Ruby
  def to_s
  end
end

## The building block for any linked list
Node = Struct.new(:value, :next_node)

# For debugging purposes
random_list = LinkedList.new
p random_list.apprend('Alice')
p random_list.apprend('Jeanne')
p random_list.prepend('Elise')
p random_list

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
