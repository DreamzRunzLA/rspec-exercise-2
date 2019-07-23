def partition(arr, num)
    final = []
    sub1 = []
    sub2 = []

    arr.each do |ele|
        if ele < num
            sub1 << ele
        elsif ele >= num
            sub2 << ele
        end
    end
    final << sub1
    final << sub2
    return final
end


def merge(hash1, hash2)
    ans = Hash.new 

    hash1.keys.each do |key|
        ans[key] = hash1[key]
    end

    hash2.keys.each do |key|
        ans[key] = hash2[key]
    end

    return ans
end


def censor(sentence, curseWords)
    vowels = 'aeiou'
    words = sentence.split(' ')
    ans = []

    words.each do |word|
        if curseWords.include?(word.downcase)
            newWord = ''
            word.each_char do |char|
                if vowels.include?(char.downcase)
                    newWord.concat('*')
                else
                    newWord.concat(char)
                end
            end
            ans << newWord
        else
            ans << word
        end
    end
    return ans.join(' ')
end


def power_of_two?(num)
    powersOfTwo = [1]
    (1..20).each do |num|
        powersOfTwo << 2**num
    end
    if powersOfTwo.include?(num)
        return true
    else
        return false
    end
end


