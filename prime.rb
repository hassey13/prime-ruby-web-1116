# Add  code here!
def prime?(num)
    if num < 2
        return false
    end
    prime = true
    range = []
    counter = 2
    while counter < num
    	range << counter
    	counter += 1
    end
    counter = 2
    while prime && counter < num / 2 + 1
        range.each do |r|
            if r * counter == num
                prime = false
            end
        end
        break if counter * counter > num
        counter += 1
    end
    return prime
end
