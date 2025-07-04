array = Array.new(10) { rand(50) }          #Generates random array of 10 numbers

puts "Initial array : #{array}"

def bubble_sort(array)
    n = array.length
    n.times do |x|                          #goes through inner loop n number of times
        (0...n - 1).each do |y|             #checks every index one by one till second last index
            if array[y] > array[y + 1]
                array [y], array[y + 1] = array [y + 1], array[y] #swaps the array if condition is true
            end
        end
    end
    puts "Sorted array : #{array}"
end
bubble_sort(array)
