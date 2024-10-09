# 49. Group Anagrams

# Given an array of strings strs, group the anagrams together.
# You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters
# of a different word or phrase, typically using all the original
# letters exactly once.
################################################

# from collections import defaultdict
# # bringing default dict because on a regular basis we cant
# # leave dict empty before adding values and default dict will have some default values


# class Solution:
#     def groupAnagrams(self, strs: List[str]) -> List[List[str]]:

#         anagram_map = defaultdict(list)
#         # creating a default dict of lists
#         result = []

#         for s in strs:
#             sorted_s = tuple(sorted(s))
#             # creating key by making a tuple of sorted s list of letters for a specific words
#             anagram_map[sorted_s].append(s)
#             # adding the word to the new key we made

#         for value in anagram_map.values():
#             result.append(value)
#             # adding all the values to the result list

#         return result

# used hash maps
# https://www.youtube.com/watch?v=RcZsTI5h0kg
# nathi khabar padi


# Import List from the typing module to allow type hints for lists
from typing import List

class Solution:
    # Function to group anagrams together
    # It takes a list of strings ('strs') and returns a list of lists of strings
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        # Initialize an empty dictionary to store grouped anagrams
        dict_strs = {}

        # Loop through each string in the input list 'strs'
        for x in strs:
            # Generate a key by sorting the characters of the string using the get_Str_key function
            key = self.get_Str_key(x)
            
            # Check if the sorted string (key) already exists in the dictionary
            if key in dict_strs:
                # If the key exists, append the original string to the list of anagrams under that key
                dict_strs[key].append(x)
            else:
                # If the key does not exist, create a new key and set its value to a list containing the string
                dict_strs[key] = [x]
        
        # Return all the grouped anagrams as a list of lists (each value in the dictionary is a list of anagrams)
        return list(dict_strs.values())

    # Helper function to generate a "key" for each string
    # This key is the sorted version of the string, which will be used to group anagrams
    def get_Str_key(self, a: str) -> str:
        # Initialize an empty list to hold the characters of the string
        sorted_Str_list = []

        # Loop through each character in the string 'a' and append it to the list
        for i in a:
            sorted_Str_list.append(i)
        
        # Sort the list of characters in alphabetical order
        sorted_Str_list.sort()

        # Join the sorted characters into a single string
        # The variable 'b' is an empty string used as a separator (no space between characters)
        b = ""
        return b.join(sorted_Str_list)  # Return the sorted string
