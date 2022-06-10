# decode one character
$morseCodes = {
  '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
  '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
  '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
  '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
  '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
  '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
  '-.--' => 'Y', '--..' => 'Z'
  }


def decode_char(char)  
  $morseCodes[char]
end

# decode a word
def decode_word(word)
  wordDecoded = ''
  word.split.each do |letter|
    wordDecoded += decode_char(letter)
  end
  wordDecoded
end

# decode the entire message
def decode_message(message)
  messageDecoded = ''
  message.split('  ').each do |messages|
    messageDecoded += "#{decode_word(messages)} "
  end
  messageDecoded
end

puts 'Enter a message to decode!'
getMessage = gets.chomp
puts decode_message(getMessage)