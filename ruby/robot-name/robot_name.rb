class Robot
  attr_reader :name

  USED_NAMES = []

  def initialize
    @name = generate_name
  end

  def name_checker(name)
    if USED_NAMES.include?(name)
      generate_name
    else
      USED_NAMES << name
    end
    name
  end

  def generate_name
    name_array = []
    2.times { name_array << (65 + rand(26)).chr }
    3.times { name_array << rand(9) }
    name_checker(name_array.join)
  end

  def reset
    USED_NAMES.delete(name)
    @name = generate_name
  end
end
