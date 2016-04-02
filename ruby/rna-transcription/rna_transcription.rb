class Complement
  VERSION = 2

  def self.of_dna(nucleotide)
    nucleotide.each_char do |input|
      valid = "GCAT"
      raise ArgumentError, "Invalid input" unless
      valid.include?(input)
    end

    nucleotide.upcase.gsub(/[GCAT]/, "G" => "C", "C" => "G", "A" => "U", "T" => "A")
  end

  def self.of_rna(nucleotide)
    nucleotide.each_char do |input|
      valid = "GCUA"
      raise ArgumentError, "Invalid input" unless
      valid.include?(input)
    end

    nucleotide.upcase.gsub(/[GCUA]/, "G" => "C", "C" => "G", "U" => "A", "A" => "T")
  end
end
