def bad_two_sum?(arr, target) ### Time complexity => O(n^2) Data complexity => O(1)
    (0...arr.length - 1).each do |idx|
        ((idx + 1)...arr.length).each do |idx_2|
            return true if arr[idx] + arr[idx_2] == target
        end
    end
    false
end

def okay_two_sum?(arr, target) ### Time complexity => O(log(n)) Data complexity => O(n)
    return true if arr.include?(0) && arr.include?(target)
    sorted = arr.sort.reverse
    less = arr.select { |ele| ele < target / 2 }
    more = arr.select { |ele| ele > target / 2 }
    half = arr.select { |ele| ele == target / 2 }
    return true if half.length >= 2

    less.each do |s_num|
      more.each do |b_num|
        return true if s_num + b_num == target
      end
    end
  false
end

def two_sum?(arr, target) ### Time complexity => O(n) Data complexity => O(n)
    hash = Hash.new(0)
    arr.each do |ele| 
        return true if hash.any? {|k,v| k + ele == target}
        hash[ele] += 1
    end
    false
end
