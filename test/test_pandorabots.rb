require File.expand_path("../../lib/pandorabots.rb", __FILE__)

def print_result(result)
  puts ""
  if (result)  
    if result[:success]
      puts "Success!"
    else
      puts "Fail!"
    end
    puts "You: #{result[:input]}"
    puts "Eve: #{result[:output]}"
  else
    puts "HARD FAIL!"
    p result
  end
end

result = Pandorabots.talk("a9481f8c7e347656", "whats your name?")
print_result result


result = Pandorabots.talk("x", "whats your name?")
print_result result



puts ""