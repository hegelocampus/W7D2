#anagrams/anagrams.rb

### first anamgram time complexity => O(n!) data complexity => O(n!)
def anagram?(str1, str2)
    str1.split("").permutation.to_a.any? { |perm| perm.join == str2} 
end

### second anagram time complexity => O(n^2) data complexity => O(n)
def second_anagram?(str1, str2)
    str_2_spl = str2.split("")
    str1.each_char do |char|   
        i = str_2_spl.find_index(char)
        return false if i.nil?
        str_2_spl.delete_at(i)
    end
    str_2_spl.empty?
end

def third_anagram?(str1, str2) # time complexity => O(log(n) * n) memory complexity => O(n)
    str1.split("").sort == str2.split("").sort
end

def fourth_anagram?(str1, str2) #time complexity => O(2 * n) memory complexity => O(n)
  count1, count2 = Hash.new(0), Hash.new(0)
  str1.each_char { |char| count1[char] += 1 }
  str2.each_char { |char| count2[char] += 1 }
  count1 == count2
end

def fifth_anagram?(str1, str2) #time complexity => O(2 * n^2) memory complexity => O(n)
  count = Hash.new(0)
  str1.each_char { |char| count[char] += 1 }
  str2.each_char do |char|
    return false unless count[char] == str2.count(char)
  end
  true
end


def sixth_anagram?(str1, str2) #time complexity => O(3 * n) memory comlexity O(n)
  count = Hash.new(0)
  str1.each_char { |char| count[char] += 1 }
  str2.each_char { |char| count[char] -= 1 }
  count.all? { |k, v| v == 0 }
end