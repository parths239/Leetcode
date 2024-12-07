class Solution:
    def isValid(self, s: str) -> bool:
        stack = []
        closeToOpen = {
            "}": "{",
            ")": "(",
            "]": "[",  
        }
        for val in s:
            if val in closeToOpen:
                if stack and stack[-1] == closeToOpen[val]:
                    stack.pop()
                else:
                    return False
            else:
                stack.append(val)
        return True if not stack else False
 # https://www.youtube.com/watch?v=aKTGpBeOeZg&ab_channel=AnujBhaiya 