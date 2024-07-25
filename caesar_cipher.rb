def caesar_cipher(string, factor)
  # Arrays in which it contains all lowercase and uppercase letters
  alphabet_uncap = ('a'..'z').to_a
  alphabet_cap = ('A'..'Z').to_a
  # splitting the given string by the space inbetween words
  str = string.split('')

  # iterate through the given string and append the new letter to the result variable
  result = str.map do |character|
    # if statement in which it checks whether the character is not uppercase or lowercase, then
    #    that character will stay the same and append to the result variable
    if !(('a'..'z').to_a + ('A'..'Z').to_a).include?(character)
      character = character

    # else if the character is uppercase, then to find the new index by adding the previous one by
    #    the new given one. Lastly you do modulus that number by 26 (which is the number of letters
    #    in the alphabet). That number calculated is the index for the new character.
    elsif character.upcase == character
      indx = (alphabet_cap.index(character.to_s) + factor) % 26
      alphabet_cap[indx]

    # else if the character is lowercase, then to find the new index by adding the previous one by
    #    the new given one. Lastly, you do modulud that number by 26. That number calculated is the
    #    index for the new character.
    elsif character.downcase == character
      indx = (alphabet_uncap.index(character.to_s) + factor) % 26
      alphabet_uncap[indx]
    end
  end
  # revert the seperated string to one combined string with spaces.
  result.join('')
end
# prints the result to the command line of the method call
p caesar_cipher("What a string!", 5)
