require "byebug"
require "benchmark"

def my_min(list) #time complexity => O(n^2) #space complexity => O(1)
    smallest_num = list[0]
    
    list.each do |ele|
        list.each do |ele_2|
            smallest_num = ele if ele < ele_2 && smallest_num > ele
        end
    end
    smallest_num
end

def my_min_2(list) #time complexity => O(n) #space complexity => O(1)
    smallest_num = list[0]
    
    list.each do |ele|
      smallest_num = ele if smallest_num > ele
    end
    smallest_num
end

def lcsum(list) #time complexity => O(n^2) #space complexity => O(n^2)
    subs = []
    list.each_index do |i1|
        list.each_index do |i2|
            ele = list[i1..i2]
            subs << ele
        end
    end
    largest = subs[0].sum
    subs.each do |sub|
      largest = sub.sum if largest < sub.sum
    end
    largest
end

def btr_lcsum(list)
  largest = list.first
  (0..list.length - 1).each do |idx_1|
    (idx_1..list.length - 1).each do |idx_2|
      ele = list[idx_1..idx_2].sum
      largest = ele if largest < ele
    end
  end
  largest
end

# Benchmark.bm(lcsum((1..1000).to_a)) do |x| 
#   x.report("first:")   { (1..10000).each { |i| i } }
#   x.report("second:") { (1..10000).each { |i| i }}
#   x.report("third:")  { (1..10000).each { |i| i }}
# end

# Benchmark.bm(btr_lcsum((1..1000).to_a)) do |x| 
#   x.report("first:")   { (1..10000).each { |i| i } }
#   x.report("second:") { (1..10000).each { |i| i }}
#   x.report("third:")  { (1..10000).each { |i| i }}
# end