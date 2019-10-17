
# Time Complexity: ?
# Space Complexity: ?
def max_sub_array(nums)
    return 0 if nums == nil
    return nil if nums.empty?

    max_so_far = 0
    max_ending_here = 0

    nums.each do |n|
        max_ending_here = max_ending_here + n
        if max_ending_here < 0
            max_ending_here = 0
        end
        if max_so_far < max_ending_here
            max_so_far = max_ending_here
        end
    end

    return max_so_far
end
