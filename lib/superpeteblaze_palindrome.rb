require "superpeteblaze_palindrome/version"

module SuperPeteBlazePalindrome
  # Returns true for a palindrome, false otherwise
  def palindrome?
    processed_content == processed_content.reverse
  end

  private

    # Returns content for palindrome testing
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

# Monkey Patches the String class
class String
  include SuperPeteBlazePalindrome
end

# Monkey Patches the String class
class Integer
  include SuperPeteBlazePalindrome
end
