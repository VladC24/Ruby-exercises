def longest_prefix(strings)
  return "" if strings.empty?
  str, count  = strings[0], 0
  str.chars.each_with_index do |char, idx|
    break if strings[1..-1].any? { |s| s[idx] != char }
    count += 1
  end
  
  str.slice(0, count)
end

strings = ["apple", "apply", "ape", "aperson", "person"]
