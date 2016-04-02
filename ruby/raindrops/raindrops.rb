class Raindrops
  VERSION = 1

  def self.convert(num)
    rain = ''
    rain += num % 3 == 0 ? 'Pling' : ''
    rain += num % 5 == 0 ? 'Plang' : ''
    rain += num % 7 == 0 ? 'Plong' : ''
    rain == '' ? num.to_s : rain
  end
end
