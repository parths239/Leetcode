class Solution:
    #two pointer: we keep one pointer at location we need to update
    #  we loop other pointer and we only switch values if they are not two with the pointer left behind, after switching we increment the left behind pointer
    # this way we move all the non "val" element upfront and return the number of them
    def removeElement(self, nums: List[int], val: int) -> int:
        k = 0
        for i in range(len(nums)):
            if nums[i] != val:
                nums[k] = nums[i]
                k += 1
        return k