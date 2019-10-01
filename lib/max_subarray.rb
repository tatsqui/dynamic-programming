
# @param {Integer} num1, {Integer} num2
# @return {Integer}
def max(num1, num2)
  return num1 > num2 ? num1: num2
end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    return 0 if nums == nil
    
    current_max = max_so_far = nums[0]
    
    (1...nums.length).each do |index|
        current_max = nums[index] > current_max + nums[index] ? nums[index] : current_max+nums[index]
        max_so_far = current_max if current_max > max_so_far
    end
    
    return max_so_far
end