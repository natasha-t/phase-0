# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.
  #start 2:06

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# <main>
# 2. What is the line number where the error occurs?
# The line number indicates the error is on line 171
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# That there was an unexpected end of input, where it was expecting the keyword 'end'
# 5. Where is the error in the code?
# There should be an end keyword on line 17 to end the while loop in the cartman_hates method
# 6. Why did the interpreter give you this error?
# I think the interpreter jumped to the end of the document because it considered the method to never have ended since the while loop's end method was missing

# --- error -------------------------------------------------------

south_park = "tv show"

# 1. What is the line number where the error occurs?
# line 37
# 2. What is the type of error message?
# undefined local variable or method 'south park'
# 3. What additional information does the interpreter provide about this type of error?
# it also says this undefined local variable or method is a name error for main:Object
# 4. Where is the error in the code?
# we have to give south_park a value if it's a variable
# 5. Why did the interpreter give you this error?
# south_park has no meaning or value associated with it so the interpreter doesn't know what to do with it

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# line 52
# 2. What is the type of error message?
# undefined method 'cartman'
# 3. What additional information does the interpreter provide about this type of error?
# it says it's a No Method Error
# 4. Where is the error in the code?
# If the method is being called here it needs to be defined first elsewhere in the code; otherwise it needs to be made into a properly defined method
# 5. Why did the interpreter give you this error?
# cartman() has no meaning or associated code to have it run anything

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# It indicates there is a wrong number of arguments for this method (1 for 0)
# 3. What additional information does the interpreter provide about this type of error?
# the interpreter indicates this as an Argument Error
# 4. Where is the error in the code?
# in the method definition there should be a parameter, like (phrase)
# 5. Why did the interpreter give you this error?
# The (1 for 0) means that the method was called with an argument when in the method definiton no parameters were stated.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("Eff you!")

# 1. What is the line number where the error occurs?
# 86
# 2. What is the type of error message?
# wrong number of arguments, this time (0 for 1)
# 3. What additional information does the interpreter provide about this type of error?
# Argument Error
# 4. Where is the error in the code?
# This time the method definition uses one parameter, while the method call is taking no arguments which is causing the error.
# 5. Why did the interpreter give you this error?
# The cartman_says method needs to have an argument or in this case an offensive message as a string



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "dude")

# 1. What is the line number where the error occurs?
# 107
# 2. What is the type of error message?
# wrong number of arguments (1 for 2)
# 3. What additional information does the interpreter provide about this type of error?
# This is an argument error from errors.rb line 111 in <main> file
# 4. Where is the error in the code?
# cartmans_lie needs to have 2 arguments instead of 1
# 5. Why did the interpreter give you this error?
# The number of arguments is inconsistent with the number of parameters. There should be 2 arguments when cartmans_lie is being called

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 126
# 2. What is the type of error message?
# it says that the string can't be coerced into Fixnum, meaning the interpreter cannot perform this operation where an integer is being multiplied by a string
# 3. What additional information does the interpreter provide about this type of error?
# It also says this is a Type Error
# 4. Where is the error in the code?
# The * 5 should come after the string
# 5. Why did the interpreter give you this error?
# operands like * are considered methods so they need to be placed to the left of the object (here the object is a string)

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/5


# 1. What is the line number where the error occurs?
# 141
# 2. What is the type of error message?
# it says this is a Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# It specifies this error by saying divided by 0 so you know what exactly it means by Zero Division error
# 4. Where is the error in the code?
# The error occurs when 0 is placed after '/' division sign
# 5. Why did the interpreter give you this error?
# It's mathematically impossible to divide a number by 0. Ruby is like a pocket calculator so that's why this error was given

# --- error -------------------------------------------------------

# require_relative "cartmans_essay"

# 1. What is the line number where the error occurs?
# 157
# 2. What is the type of error message?
# it says it cannot load 'require_relative' file
# 3. What additional information does the interpreter provide about this type of error?
# It also says this is a Load Error
# 4. Where is the error in the code?
# There's no need for a the .md extension if relative is used on required.
# 5. Why did the interpreter give you this error?
# A cartmans_essay.md doesn't even exist within this directory so it wouldn't load anyway hence the error.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
     # The cartman_hates(thing) method error with the while loop was the most difficult to read because of which line the interpreter referred to. The interpreter said the error was at the very end of the file, while the error was within the method.
# How did you figure out what the issue with the error was?
    # What helped indicate what the error actually was 'expecting keyword end' in the error message. Also it couldn't have skipped all the other errors in the document; it has to start with the first error it encounters
# Were you able to determine why each error message happened based on the code?
   # Once the interpreter explained the error it was fairly easy to determine why the error happened based on the code
# When you encounter errors in your future code, what process will you follow to help you debug?
  # Well I'll follow this process, where I'll go through each error message and determine the errors in the code. As I get more advanced I'll set up subsequent tests that will run at the same time as the execution so that debugging occurs simultaneously and bugs are caught quicker.