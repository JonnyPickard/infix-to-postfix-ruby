class Calculator

  def answer(str)
    # 1 set precidence with hash for * and +
    @precidence = {
      "*" => 2,
      "+" => 1
    }

    # 2 make output array + stack
    output = []
    stack = []

    # 3 make character array
    # 4 split string push to chars array
    chars = str.split(//)

    # 5 iterate over chars character array
    chars.each do | char |

      #6 send ints to output using regex
        if char =~ /\d/
          output << char

        #7 else send operator to stack
        #8 if same or empty put straight on stack
        elsif stack.empty?
          stack << char

        elsif stack.last == char
          stack << char

        #9 if higher precidence put on stack
        elsif @precidence[stack.last] < @precidence[char]
          stack << char

        #10 else pop stack to ouput if lower precidence
        #iterating over the stack to check precidence
        elsif @precidence[stack.last] > @precidence[char]
          count = 0
          stack.each do | s |
            if @precidence[s] > @precidence[char]
            output << s
            count += 1
            end
          end
          stack.pop(count)
          stack << char
        end
      end

      # 11 put remaining stack onto output
      until stack.empty?
        output << stack.pop
      end

    # 12 format the ouput correctly
    return output.join
  end
end
