/* Given a name, return a string with the message:
One for X, one for me.
Where X is the given name.
However, if the name is missing, return the string:
One for you, one for me.
Here are some examples:
Name	String to return
Alice	One for Alice, one for me.
Bob	One for Bob, one for me.
One for you, one for me.
Zaphod	One for Zaphod, one for me.
*/

#!/usr/bin/env bash


echo "One for ${1:-you}, one for me."
