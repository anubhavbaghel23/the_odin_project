puts 'Enter a word :'
input = gets.to_s.chomp

puts 'Enter shift value :'
shift_value = gets.to_i

def caesar_cipher(string, shift)
  # 1. take character from string
  # 2. check if its upcase or downcase
  # 3. find the ASCII code for the character
  # 4. increment the ASCII code with shift number
  # 5. do some calculation to wrap alphabet
  # 6. return the result
  result = ''
  string.each_char do |char|
    case char
      when "a".."z"  
      result += (((char.ord + shift - 'a'.ord ) % 26) + 'a'.ord).chr
      when "A".."Z"
      result += (((char.ord + shift - 'A'.ord ) % 26) + 'A'.ord).chr
      else
      result += char
    end
  end
  result
end

puts "Encrypted form :"
puts caesar_cipher(input, shift_value)


#for personal use

#logic for wrapping
#(122(z.ord) - 97(a.ord)) + 3(shift) = 99 (required_alphabet = c.ord) 
#(25 + 3) % 26 = 99
#28 % 26 = 99
#2 + 97(a.ord) = 99

#more efficient logic for wrapping
#122(z.ord) + 3(shift) - 97(a.ord) = 99 
#(125 - 97) % 26 = 99
#(28 % 26) = 99
#2 + 97 (a.ord) = 99