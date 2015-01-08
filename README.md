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

Now, in Haskell
---------------

CIS 194 uses the Luhn algo for its first homework assignment, so now there's a Haskell version, too

From the command line:

    $> runhaskell src/luhn.hs
    Enter a number: 79927398710
    False

    $> runhaskell src/luhn,hs
    Enter a number: 79927398713
    True
