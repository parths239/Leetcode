class MinStack:

    def __init__(self):
        self.stack = []
        

    def push(self, val: int) -> None:
        self.stack.append(val)
        

    def pop(self) -> None:
        self.stack.pop()
        

    def top(self) -> int:
        return self.stack[-1]
        

    def getMin(self) -> int:
        i = self.stack[-1]
        for x in range(len(self.stack)):
            if self.stack[x] <= i:
                i = self.stack[x]
        return i