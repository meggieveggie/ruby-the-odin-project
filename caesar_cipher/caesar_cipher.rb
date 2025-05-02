def caesar_cipher(text, shift)
  result = ""
  text.each_char do |char|
    if char =~ /[A-Za-z]/
      base = char.ord < 91 ? 'A'.ord : 'a'.ord
      result += ((char.ord - base + shift) % 26 + base).chr
    else
      result += char
    end
  end
  result
end

puts casear_cipher("What a string!", 5) 