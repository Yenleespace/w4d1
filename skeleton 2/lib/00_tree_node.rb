class PolyTreeNode

    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(passed_node) #self is current node 

        if passed_node == nil
         

        else
           if !passed_node.children.include?(self)
            passed_node.children << self
           end
           @parent = passed_node
       end
      
    end


    def add_child(node)
      self.parent=(node)

    end
end