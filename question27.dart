27. Remove Element
  
Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
Consider the number of elements in nums which are not equal to val be k, to get accepted, you need to do the following things:
Change the array nums such that the first k elements of nums contain the elements which are not equal to val. The remaining elements of nums are not important as well as the size of nums.
Return k.
Custom Judge:

The judge will test your solution with the following code:

int[] nums = [...]; 
int val = ...; 
int[] expectedNums = [...]; 
                            
int k = removeElement(nums, val); 

assert k == expectedNums.length;
sort(nums, 0, k);
for (int i = 0; i < actualLength; i++) {
    assert nums[i] == expectedNums[i];
}
If all assertions pass, then your solution will be accepted.

Example 1:
Input: nums = [3,2,2,3], val = 3
Output: 2, nums = [2,2,_,_]
Explanation: Your function should return k = 2, with the first two elements of nums being 2.
It does not matter what you leave beyond the returned k (hence they are underscores).

  //Answer

class Solution {
  int removeElement(List<int> nums, int val) {
    int slow = 0;
    for(int fast = 0; fast < nums.length; fast++){
        if(nums[fast]!= val){
            nums[slow] = nums[fast];
            slow++;
        }
    }
    return slow;
  }
}  
