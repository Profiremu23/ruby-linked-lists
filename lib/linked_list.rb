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
class Node
  include LinkedList

  def value
  end

  def next_node
  end
end
