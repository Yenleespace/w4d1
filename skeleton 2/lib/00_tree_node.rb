class PolyTreeNode

    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(passed_node) #self is current node 
        if passed_node == nil
            @parent = nil
            return 
        end
        if @parent == nil 
          if !passed_node.children.include?(self)
              passed_node.children << self
          end
           @parent = passed_node
        else
            @parent.children.delete(self)
            @parent = passed_node
          if !passed_node.children.include?(self)
              passed_node.children << self
          end
        end 
    end

    def add_child(child)
        if !self.children.include?(child)
            child.parent=(self)
        end
    end

    def remove_child(child)
        raise "error" if !self.children.include?(child)
        child.parent=(nil)
    end

    def dfs
    end
end