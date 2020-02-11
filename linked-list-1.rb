class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
    
  end
end

class Stack

  def initialize
    @first = nil
  end

  def push(value)
    @first = Node.new(value, @first)
  end
  alias_method :"<<", :push

  def pop
    raise "Stack is empty" if is_empty?
    value = @first.value
    @first = @first.next_node
    value
  end

  def is_empty?
    @first.nil?
  end
end


def reverse_list(list_node)
  
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

stack = LinkedList::Stack.new

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts"------------------"

revlist = reverse_list(node3)

print_values(revlist)