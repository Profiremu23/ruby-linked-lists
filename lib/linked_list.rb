# frozen_string_literal: false

## The building block for any linked list
Node = Struct.new(:value, :next_node)

## To represent the missing linked list class for Ruby
class LinkedList
  # Some constant variables for the linked list to work
  def initialize
    @head = []
    @head_value = @head[0]
    @tail_value = @head[-1]
  end

  # This will add a new Node to the end of the linked list
  def apprend(value)
    p @head << Node.new(value)
    @head[-2].next_node = @head[-1][:value] if @head.size > 1
    @head_value = @head[0][:value]
    @tail_value = @head[-1][:value]
  end

  # This will add a new Node to the beginning of the linked list
  def prepend(value)
    p @head.insert(0, Node.new(value))
    @head[0].next_node = @head[1][:value] if @head.size > 1
    @head_value = @head[0][:value]
    @tail_value = @head[-1][:value]
  end

  def insert_at(index, value)
    p @head.insert(index, Node.new(value))
    @head[index - 1].next_node = @head[index][:value] if @head[index - 1].nil? == false
    @head[index].next_node = @head[index + 1][:value] if @head[index + 1].nil? == false
  end

  def remove_at(index)
    p @head.delete_at(index)
    @head[index - 1].next_node = @head[index][:value] if @head[index - 1].nil? == false
    @head[index].next_node = @head[index + 1][:value] if @head[index + 1].nil? == false
  end

  # This will get the accurate size of the current linked list
  def size
    p @head.size
  end

  # This will return the head node's value
  def head
    p @head_value
  end

  # This will return the tail node's value
  def tail
    p @tail_value
  end

  # This will display a Node element by entering it's index within the linked list
  def at(index)
    p @head[index]
  end

  # This will delete the last element from the linked list
  def pop
    p @head.pop
  end

  # This will return a boolean value (true/false) depending on the given value's presentence in the linked list
  def contains?(value)
    @head.count do |element|
      return p true if element[:value] == value
    end
    p false
  end

  # This will find the given value's index position within it's linked list
  def find(value)
    @head.count do |element|
      return p @head.index(element) if element.include?(value)
    end
    p nil
  end

  # This will give a more organized and cleaner look to represent a linked list in Ruby
  def to_s
    display = ''
    @head.count do |element|
      display << "( #{element[:value]} ) -> "
    end
    display << 'nil'
  end
end
