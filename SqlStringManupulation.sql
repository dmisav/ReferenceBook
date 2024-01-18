
//CONCAT: Concatenates two or more strings into one string.
SELECT CONCAT(string1, string2, ...) FROM my_table;

//LEN: Returns the number of characters in a string, excluding trailing spaces.
SELECT LEN(string) FROM my_table;

//CHARINDEX: Returns the starting position of a substring within a string. Returns 0 if the substring is not found.
SELECT CHARINDEX(substring, string) FROM my_table;

//SUBSTRING: Extracts a substring from a string. The first position in a string is 1.
SELECT SUBSTRING(string, start, length) FROM my_table;

//REPLACE: Replaces all occurrences of a specified substring with another substring.
SELECT REPLACE(string, old_substring, new_substring) FROM my_table;

//LTRIM and RTRIM: Remove leading and trailing spaces from a string, respectively.
SELECT LTRIM(string), RTRIM(string) FROM my_table;

//UPPER and LOWER: Convert all characters in a string to uppercase or lowercase, respectively.
SELECT UPPER(string), LOWER(string) FROM my_table;

//PATINDEX: Returns the starting position of the first occurrence of a pattern in a string.
SELECT PATINDEX('%pattern%', string) FROM my_table;

//STUFF: Inserts a string into another string. It can also delete a specified length of characters in the first string at the start position and then insert the second string into the first string at the start position.
SELECT STUFF(string, start, length, new_string) FROM my_table;

//LEFT and RIGHT: Returns the leftmost or the rightmost part of a string with a specified number of characters.
SELECT LEFT(string, length), RIGHT(string, length) FROM my_table;