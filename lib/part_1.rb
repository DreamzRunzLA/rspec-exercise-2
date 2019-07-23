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
    
end


def censor(sentence, curseWords)

end


def power_of_two?(num)

end


