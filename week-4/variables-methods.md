##Reflection

- How do you define a local variable?
    - a local variable is defined using a word with the first letter as lowercase. To separate two words you'd use an underscore i.e. my_variable
- How do you define a method?
    - a method is defined by the ``` def ``` keyword and the name of the method (using local variable naming rules), followed by a code block, then ends with the keyword ``` end ```
- What is the difference between a local variable and a method?
    - a local variable is the assignment of a value or simply an object, while a method contains code that *does* something. You can think of it like a local variable being a noun and a method being a verb.
- How do you run a ruby program from the command line?
    - To run a ruby program from the command line you simply type ``` ruby [FILENAME] ``` with the ``` rb ``` extension
- How do you run an RSpec file from the command line?
    - To run an RSpec file, you type ``` rspec [rspec FILENAME] ```. The code in this file must be written using rspec syntax.
- What was confusing about this material? What made sense?
    - I ran into a failure issue with the format address exercise and I couldn't figure out why. The ``` make_address ``` method was returning the correct output but the failure was saying it was getting 'nil'. I got hung up on triple checking the output, making sure it matched precisely with what was written in the exercise. It wasn't until I moved to the math methods exercise that I realized that the problem was that I had either ``` puts ``` or ``` print ``` in the ``` make_address ``` method. Once I removed it then the tests passed. Doi.

###Links to Exercise Solutions
- [Return Formatted Address](address/my_solution.rb)
- [Defining Math Methods](math/my_solution.rb)