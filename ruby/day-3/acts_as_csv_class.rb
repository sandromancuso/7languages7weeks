class ActAsCsv
  def self.acts_as_csv
  
    define_method 'initialize' do 
      @result = []
      read
    end
    
    define_method 'read' do
      file = File.new(self.class.to_s.downcase + ".txt")
      @headers = file.gets.chomp.split(', ')
      
      file.each do |row|
        @result << row.chomp.split(', ')
      end
    end
    
    define_method 'headers' do
      @headers
    end
    
    define_method 'csv_contents' do
      @result
    end
  end
end

class RubyCsv < ActAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts "Header: #{m.headers.inspect}"
puts "Content: #{m.csv_contents.inspect}"
