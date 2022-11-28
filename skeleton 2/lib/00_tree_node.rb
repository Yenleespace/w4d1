class PolyTreeNode

    attr_reader :value, :parent, :children
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        @parent = node
        if !self.children.include?(node)
            @children << node.children
        else
            
        end
    end
end