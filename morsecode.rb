# decode one character
def decode_char(char)
  morse_codes = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }

  morse_codes[char]
end

# decode a word
def decode_word(word)
  word_decoded = ''
  word.split.each do |letter|
    word_decoded += decode_char(letter)
  end
  word_decoded
end

# decode the entire message
def decode_message(message)
  message_decoded = ''
  message.split('  ').each do |messages|
    message_decoded += "#{decode_word(messages)} "
  end
  message_decoded
end

puts 'Enter a message to decode!'
get_message = gets.chomp
puts decode_message(get_message)
