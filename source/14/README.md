# [Longest Collatz sequence](http://projecteuler.net/problem=14)

The following iterative sequence is defined for the set of positive integers:

<var>n</var> ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) <var>n</var>/2 (<var>n</var> is even)  
<var>n</var> ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 3<var>n</var> + 1 (<var>n</var> is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 40 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 20 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 10 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 5 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 16 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 8 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 4 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 2 ![→](/Users/tranthanhan/.rvm/gems/ruby-2.2.0/gems/euler-manager-0.1.1/config/../data/images/symbol_maps.gif) 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

**NOTE:** Once the chain starts the terms are allowed to go above one million.

