def sum_to(n)
    return 0 if n == 0

    return nil if n < 0
    n + sum_to(n-1) 
end

def add_numbers(nums_array)
    return nil if nums_array.length == 0
    return nums_array[0] if nums_array.length == 1

    nums_array[0] + add_numbers(nums_array[1..-1])
end

def gamma_fnc(n)
    if n == 0
        return nil
    elsif n == 1
        return 1
    elsif n == 2
        return 1
    end

    (n-1) * gamma_fnc(n-1)
end

def ice_cream_shop(flavors, favorite)
    return false if flavors.length == 0
    return flavors[0] == favorite if flavors.length == 1
    return true if flavors[0] == favorite

    ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(string)
    return string if string.length <= 1

    reverse(string[1..-1]) + string[0] 
end