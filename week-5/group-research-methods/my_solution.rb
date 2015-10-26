# Research Methods

# I spent [] hours on this challenge.
# start 1 hour 10 min

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {
  "Evi" => 6,
  "Ditto" => 3,
  "Hoobie" => 3,
  "George" => 12,
  "Bogart" => 4,
  "Poly" => 4,
  "Annabelle" => 0
}

# Person 1's solution

#Pseudocode - my_array_finding_method
# take in 2 arguments: i_want_pets (array) and a letter (string)
# check for each element of array for that letter
# make empty array that will hold elements from array with the specified letter
# if element has the letter
  # push to new array

def my_array_finding_method(array, letter)
  array_with_strings = array.map {|x| x.to_s} #convert all characters to string
  words_with_letter = []
  array_with_strings.each do |character|
    if character.include?(letter)
      words_with_letter << character
    end
  end
    p words_with_letter
end

my_array_finding_method(i_want_pets, "s")

#Pseudocode - my_hash_finding_method
#INPUT: 2 arguments: my_family_pets_ages (hash) and age (number)
#OUTPUT: new array of pet names with the age specified

#iterate through hash, looking for keys with specified age value
# output keys that match age criteria

def my_hash_finding_method(hash, age)
  pets = []
  hash.select do |name|
    if hash[name] == age
      pets << name
    end
  end
  p pets
end

my_hash_finding_method(my_family_pets_ages, 12)

# Identify and describe the Ruby method(s) you implemented.
  # For my_array_finding_method I first used .map to convert all characters into strings; .include? to find element in array that matched the criteria
  # For my_hash_finding_method I used .select to grab the key names that matched the age that was specified


# # Release 1: Identify and describe the Ruby method you implemented. Teach your
# # accountability group how to use the methods.
# # .map { |x| x.to_s} --> converts all elements of array into a string; returns an array
# # .include?(letter) --> searches element for specified string (letter); returns true if string is in element
# # .select --> selects elements of hash based on key value (name); returns array


# # Release 3: Reflect!
# # What did you learn about researching and explaining your research to others?
# # I'd start with one method, such as .each to iterate through the array or hash, then after researching I'd find another method that better accomplishes what I want the method to do.
# # I'm sure others in my group have seen the methods I used; they're pretty simple. I learned though that it matters what input and output a particular Ruby method has. For example, for my_array_finding_method, I at first tried to using the .include? method on the array BEFORE converting all elements into strings, so I kept getting errors that the include? method cannot evaluate the number 3. That's when I realized I had to first convert the numbers in the array into strings in order for the rest of the code to work properly
# #
# #
