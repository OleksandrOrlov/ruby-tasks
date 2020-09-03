def caesar_cipher(string, shift_factor)
  chars = ('a'..'z').to_a
  string.each_char do |c|
    result = chars.include?(c.downcase) ? chars[(chars.index(c.downcase) + shift_factor) % 26] : c
    result.upcase! if c == c.upcase
    print result
  end
end
