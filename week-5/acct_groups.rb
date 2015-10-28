# method to automatically create accountability groups from a list of names
# 12 accountability groups; 4 or 5 people

# array of names ; empty acct group arrays

# sort method?
  # groups 1 - 11 ==> 5 people
  # group 12 ==> 4 people


names = ["Syema Ailia", "Alan Alcesto", "Daniel Andersen", "James Artz", "Darius Atmar", "Brian Bensch", "Nicola Beuscher", "Kris Bies", "Logan Bresnahan", "William Brinkert", "Scott Chou", "Bernice Anne W Chua", "Abraham Clark", "Jon Clayton", "Kevin Corso", "Jacob Crofts", "Amaar Fazlani", "Solomon Fernandez", "Edward Gemson", "Jamar Gibbs", "Chris Gomes", "Will Granger", "Christopher M. Guard", "Ryan Ho", "Igor Kazimirov", "Walter Kerr", "Karla King", "Becky Lehmann", "Malia Lehrer", "Carolina Medellin", "Timothy Meixell", "Chris Miklius", "Joshua Monzon", "Shea Munion", "Bryan Munroe", "Trevor Newcomb", "Aleksandra Nowak", "Fatma Ocal", "Van Phan", "Luis Fernando Plaz", "Natalie Polen", "Alicia Quezada", "Jessie Richardson", "Nimi Samocha", "Zach Schatz", "Tal Schwartz", "Pratik Shah", "Josh Shin", "Shawn Spears", "Sasha Tailor", "Nil Thacker", "Natasha Thapliyal", "Sabrina Unrein", "Brian Wagner", "Clinton Weber", "Gregory Wehmeier", "Michael Whelpley", "Peter N Wood", "Ryan Zell"]

# array of keys
acct_group_keys = ["acct_1", "acct_2", "acct_3", "acct_4", "acct_5", "acct_6", "acct_7", "acct_8", "acct_9", "acct_10", "acct_11", "acct_12"]

# Initial Solution -- soooo ugly, DRYing hardcore

# def acct_groups(names_array)

# acct_1 = []
# acct_2 = []
# acct_3 = []
# acct_4 = []
# acct_5 = []
# acct_6 = []
# acct_7 = []
# acct_8 = []
# acct_9 = []
# acct_10 = []
# acct_11= []
# acct_12 = []

#  acct_1 << names_array[0,5]
#  acct_2 << names_array[5,5]
#  acct_3 << names_array[10,5]
#  acct_4 << names_array[15,5]
#  acct_5 << names_array[20,5]
#  acct_6 << names_array[25,5]
#  acct_7 << names_array[30,5]
#  acct_8 << names_array[35,5]
#  acct_9 << names_array[40,5]
#  acct_10 << names_array[45,5]
#  acct_11 << names_array[50,5]
#  acct_12 << names_array[55,4]

# end


# Refactor Round 1 -- decent but last group of people repeated

# def acct_groups(names_array)

#   i = 0
#   until i == 60 do
#       p Array.new << names_array[i,5]

#       if i == 55
#         p Array.new << names_array[i,4]
#       end

#       i+=5
#   end

# end

# Refactor Round 2 -- Almighty Hash

# # make hash of accountability groups
# # hash = {
#    :acct1 => names
#    :acct2 => names
#}
# given each acct key name, 5 names from names array should be assigned
# split names into arrays FIRST
# then make into hash
    # assign each array of names to acct group keys to make hash

#.each_slice(value) will slice the array values into chunks of the specified number
    #.to_a converts to an array (normal output is an Enumerable)
# .zip method adds each element from array_of_keys to each array from sliced_values ==> ["acct_1", "name", "name, "name", "name", "name"], ["acct_2, "name", "name", "name", "name", "name"] etc
# Hash[] creates new Hash

def acct_groups(array_of_keys, array_of_values)
sliced_values = array_of_values.each_slice(5).to_a

zipped_array = array_of_keys.zip(sliced_values)

new_hash = Hash[zipped_array]

new_hash

end

p acct_groups(acct_group_keys, names)


# Changing the data
# all you'd need to do is adjust the names and acct_group_keys to manipulate the data