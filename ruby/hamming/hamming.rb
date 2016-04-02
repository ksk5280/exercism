class Hamming
  VERSION = 1

  def self.compute(strand_1, strand_2)
    raise ArgumentError, ("Strands must be the same length") if strand_1.length != strand_2.length

    return 0 if strand_1 == strand_2

    0.upto(strand_1.length).count do |index|
      strand_1[index] != strand_2[index]
    end
  end
end
