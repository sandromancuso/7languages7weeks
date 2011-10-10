module ActsAsCsv
  
  class CsvRow
    attr :contents, :headers
    def initialize(headers, contents)
      @headers = headers
      @contents = contents
    end
    
    def method_missing(method)
      index = headers.index(method.to_s)
      @contents[index]
    end
  end
  
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods
    
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')
      
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end
    end
    
    def each(&block) 
      @csv_contents.each do |r|
        row = CsvRow.new(@headers, r)
        block.call(row)
      end
    end
    
    attr_accessor :headers, :csv_contents
    
    def initialize
      read
    end
  end
end

class RubyCsv # not inheritance! You can mix it in.
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect

m.each {|row| puts row.one}
