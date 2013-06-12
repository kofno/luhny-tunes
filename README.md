Luhn Algorithm
==============

The Luhn Alogorithm implemented in Ruby. (http://en.wikipedia.org/wiki/Luhn_algorithm)

Usage
-----

From the command line:

    $> bin/luhn 79927398710
    $> 79927398710 is not valid.

    $> bin/luhn 79927398713
    $> 79927398713 is valid.

In code:

    luhn = Luhn.new 79927398713
    luhn.valid?  # --> true

To run the tests:

    ruby test/luhn_test.rb
