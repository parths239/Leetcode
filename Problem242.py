# Problem 242. Valid Anagram

class Solution:
    def isAnagram(self, s: str, t: str) -> bool:

        #created two empty lists
        s_list = []
        t_list = []

        # ran a loop through string and appended them to list
        for i in s:
            s_list.append(i)
        for j in t:
            t_list.append(j)
        
        #sorted the list to check if they are same 
        s_list.sort()
        t_list.sort()
        
        # first checked their size then ran a loop to compare each element
        if len(s_list) == len(t_list):
            for val in range(len(t_list)):
                if s_list[val] != t_list[val]:
                    return False
            return True
        return False
        
  
  # # Neetcode Solution
  # class Solution:
  #   def isAnagram(self, s: str, t: str) -> bool:
  #       if len(s) != len(t):
  #           return False

  #       countS, countT = {}, {}

  #       for i in range(len(s)):
  #           countS[s[i]] = 1 + countS.get(s[i], 0)
  #           countT[t[i]] = 1 + countT.get(t[i], 0)
  #       return countS == countT