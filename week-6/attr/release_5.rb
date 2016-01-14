#Release 5

class NameData
  attr_reader :name

  def initialize
    @name = "Menuka"
  end

end


class Greetings
  def initialize
    @nameData = NameData.new
  end

  def hello
    puts "Hello #{@nameData.name}! How wonderful to see you today."
  end
end

greet = Greetings.new
greet.hello