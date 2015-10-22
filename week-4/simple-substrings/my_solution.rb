# Simple Substrings

# I worked on this challenge [by myself, with: ].
# James Artz


# Your Solution Below

# welcome method, accepts an address as single string
# return "Welcome to California" if the address includes CA and "You should move to California" otherwise

# find string/characters "CA" in string
  # IF found, return welcome message
  # ELSE (not found), return move here message

  # .include? method

def welcome(address)
  if address.include?("CA")
    "Welcome to California"
  else
   "You should move to California"
  end
end

welcome("San Francisco, CA")
