class FamilyTree
  attr_accessor :name, :children
  
  def initialize(tree)
    @name = tree.keys.first
    @children = []
    tree[@name].each do |key, value|
      @children << FamilyTree.new(key => value)
    end
  end
  
  def visit_all(&block)
    visit &block
    @children.each { |c| c.visit_all &block }
  end
  
  def visit(&block)
    block.call self
  end
end

ruby_tree = FamilyTree.new('grandpa' => 
                                {'dad' => 
                                     {'child 1' => {},
                                      'child 2' => {}},
                                 'uncle' => 
                                     {'child 3' => {},
                                      'child 4' => {}}})

puts "Visiting entire tree"
ruby_tree.visit_all {|family_member| puts "Family member: #{family_member.name}"}