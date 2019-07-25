def palindrome?(string)
    testString = ''

    i = string.length - 1
    while i >= 0 do
        testString += string[i]
        i -= 1
    end

    if testString == string
        return true
    else
        return false
    end
end


def substrings(string)
    letters = string.split('')
    answer = []

    i = 0
    while i < letters.length do
        k = i
        while k < letters.length do 
            answer << letters[i..k].join('')
            k += 1
        end
        i += 1
    end
    return answer
end


def palindrome_substrings(string)
    substringArr = substrings(string)
    answer = []

    substringArr.each do |ele|
        if palindrome?(ele) && ele.length > 1
            answer << ele
        end
    end
    return answer 
end