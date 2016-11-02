require 'pry'

Alphabetical = /[A-Za-z]/
Capital = /[A-Z]/
Lowercase = /[a-z]/
Number_of_letters = 26

def cipher(string, shift)
  string = string.split("")
  shift = shift % Number_of_letters
  new_string = ""

  string.each do |char|
    if Alphabetical === char
      new_char = char.ord + shift

      if (Capital === char && new_char > 90) || (Lowercase === char && new_char > 122)
        new_char -= Number_of_letters
      elsif (Capital === char && new_char < 65) || (Lowercase === char && new_char < 97)
        new_char += Number_of_letters
      end

      new_char = new_char.chr
    else
      new_char = char
    end

    new_string << new_char
  end
   new_string
end
