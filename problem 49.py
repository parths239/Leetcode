# 49. Group Anagrams

# Given an array of strings strs, group the anagrams together.
# You can return the answer in any order.

# An Anagram is a word or phrase formed by rearranging the letters
# of a different word or phrase, typically using all the original
# letters exactly once.
################################################

from collections import defaultdict
# bringing default dict because on a regular basis we cant
# leave dict empty before adding values and default dict will have some default values


class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:

        anagram_map = defaultdict(list)
        # creating a default dict of lists
        result = []

        for s in strs:
            sorted_s = tuple(sorted(s))
            # creating key by making a tuple of sorted s list of letters for a specific words
            anagram_map[sorted_s].append(s)
            # adding the word to the new key we made

        for value in anagram_map.values():
            result.append(value)
            # adding all the values to the result list

        return result

# used hash maps
# https://www.youtube.com/watch?v=RcZsTI5h0kg
# nathi khabar padi
