# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
#
# Difficulty: medium.

def scramble_string(string, positions)

new_str = []

idx = 0
while idx <= string.length - 1 
	new_str[positions[idx]] = string[idx]
	idx += 1 
end

answer = new_str.join
p answer
answer
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.
puts "joe #{scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm"}"
puts("\nTests for #scramble_string")
puts("===============================================")
    puts(
      'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
      (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
    )
    puts(
      'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
      (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vroakm").to_s
      #                  vroakm
    )
puts("===============================================")