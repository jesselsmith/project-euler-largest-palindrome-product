# Implement your procedural solution here!
def largest_palindrome_product()
    first = 999
    second = 999

    palindromeProducts = []

    while first > 900 && second > 900
        product = first * second
        if isPalindrome(product)
            palindromeProducts.push(product)
        end

        if(second == 901)
            first -= 1
            second = first - 1
        else
            second -= 1
        end
    end

    palindromeProducts.sort!

    palindromeProducts.pop()
end

def isPalindrome(number)
    string = number.to_s

    string.eql?(string.reverse())
end