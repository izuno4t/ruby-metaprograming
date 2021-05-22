def math(a, b)
    yield(a, b)
end

def teach_math(a, b, &operation)
    puts "さぁ、計算を始めよう："
    puts math(a, b, &operation)
end

teach_math(2, 3) {|x, y| x * y}

