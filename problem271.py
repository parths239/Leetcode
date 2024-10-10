# 271. encode decode string (leetcode premium)

class Solution:

    # def encode(self, strs: List[str]) -> str:
    #     mySeparator = "|#|"
    #     hash_strs = mySeparator.join(strs)
    #     return hash_strs


    # def decode(self, s: str) -> List[str]:
    #     mySeparator = "|#|"
    #     new_list = s.split(mySeparator)
    #     return new_list

# this kinda uses two pointer so review it

    def encode(self, strs: List[str]) -> str:

        result_strs=""

        for x in strs:
            result_strs = result_strs + str(len(x)) + "#" + x
        
        return result_strs
    
    def decode(self, s: str) -> List[str]:

        result_list = []
        i = 0

        while i < len(s):
            j = i
            while s[j] != "#":
                j = j+1
            length= int(s[i:j])
            result_list.append(s[j+1:j+1+length])
            i = j+1+length
        
        return result_list


