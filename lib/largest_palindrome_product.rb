# Implement your procedural solution here!
# Your objective is to find the largest palindrome made from the product of two three-digit numbers.

def largest_palindrome_product
  a = (100..999)
  b = (100..999)
  palindrome = []

  a.map do |anum|
    b.map do |bnum|
      c = bnum * anum
      if c.to_s == c.to_s.reverse
        palindrome = palindrome.push(c)
      end
    end
  end
  palindrome.sort.last

end

largest_palindrome_product()
