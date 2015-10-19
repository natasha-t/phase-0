#Reflection

- What does puts do?
    - puts simply prints to the screen whatever is after written after it. For example, puts "hello" would put the word hello to the screen.
- What is an integer? What is a float?
    - An integer is a number without a decimal point like 0, -50, or 10000. A float is a number with a decimal like 9.25, 600.30.
- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
    - The output of dividing two float numbers would include a decimal point, while dividing two integers would output a whole number rounded down or returns only an integer.

##Mini Challenges

###Hours in year

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

###Minutes in Decade

```ruby

        minutes_in_hour = 60.0
        minutes_in_day = minutes_in_hour * hours_in_day

        minutes_in_month = days_in_month * minutes_in_day

        minutes_in_year = minutes_in_month * months_in_year

        minutes_in_decade = minutes_in_year * 10

        puts minutes_in_decade

        <!-- 5256000.0 -->
        ```

