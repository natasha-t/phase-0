##Summarize

- What does puts do?
    - puts simply prints to the screen whatever is after written after it. For example, puts "hello" would put the word hello to the screen.
- What is an integer? What is a float?
    - An integer is a number without a decimal point like 0, -50, or 10000. A float is a number with a decimal like 9.25, 600.30.
- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
    - The output of dividing two float numbers would include a decimal point, while dividing two integers would output a whole number rounded down or returns only an integer.

**Mini Challenges**

Hours in year

```ruby

        one_year = 365.0
        months_in_year = 12.0

        days_in_month = one_year/months_in_year
        hours_in_day = 24.0

        hours_in_month = days_in_month * hours_in_day

        hours_in_year = hours_in_month * months_in_year

        puts hours_in_year

        <!-- 8760.0  -->
```

Minutes in Decade

```ruby

        minutes_in_hour = 60.0
        minutes_in_day = minutes_in_hour * hours_in_day

        minutes_in_month = days_in_month * minutes_in_day

        minutes_in_year = minutes_in_month * months_in_year

        minutes_in_decade = minutes_in_year * 10

        puts minutes_in_decade

        <!-- 5256000.0 -->
```

##Reflection
- How does Ruby handle addition, subtraction, multiplication, and division of numbers?
    - Ruby used the methods of '+', '-', '\*', and '/'' for addition, subtraction, multiplication, and division. You can perform any of those methods on numbers (integers or floats). For string values, however, only '+'' and '\*' can be used. If you wanted to combine a string and number, like printing a string out 5 times, you'd have to put the string first then the number and use '*'
    ```ruby
            puts "Natasha" * 5
            <!-- NatashaNatashaNatashaNatashaNatasha -->
    ```
- What is the difference between integers and floats?
    - An integer is a number without a decimal point like 0, -50, or 10000. A float is a number with a decimal like 9.25, 600.30.
- What is the difference between integer and float division?
    - Integer division will return an integer (rounded down) as an output. Float division will retain the decimal point.
- What are strings? Why and when would you use them?
    - Strings are letters or text written with quotation marks. You'd use them if you needed to the computer to recognize letters from the alphabet in your program.
- What are local variables? Why and when would you use them?
    - Local variables are variables that are defined within a program and are used for purposes specific to that program.Their scope or applicability or use is limited to within the program.
- How was this challenge? Did you get a good review of some of the basics?
    - This challenge was straightforward and easy to follow. It served as a good review of the basics. I also got to learn how to place code blocks in markdown which is nifty.

**Links to Challenge Solutions**
[Defining variables](defining-variables.rb)
[Simple String Methods](simple-string.rb)
[Local Variables & Arithmetic](basic-math.rb)
