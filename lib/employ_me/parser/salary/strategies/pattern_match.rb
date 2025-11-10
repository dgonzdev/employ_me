module EmployMe
  module Parser
    module Salary
      module Strategies
        class PatternMatch
          # Return [salary floor, salary ceiling]
          def self.perform(root_node)
            tree = [root_node]

            # Depth First Search
            while tree.size > 0
              curr_node = tree.shift

              if curr_node.children.all? { |child| child.name == "comment" || child.name == 'text' }
                curr_node_text = curr_node.text

                # Salary Format: $100K - $200K
                regex = Regexp.new('\\$([0-9]+)K \S \\$([0-9]+)K', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  low = result[1].to_i * 1000
                  high = result[2].to_i * 1000

                  return [low, high]
                end

                # Salary Format: $100,000 - $200,000
                regex = Regexp.new('\\$([0-9]+),[0-9]+ - \\$([0-9]+),[0-9]+', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  low = result[1].to_i * 1000
                  high = result[2].to_i * 1000

                  return [low, high]
                end

                # Salary Format: $100,000.00 - $200,000.00
                regex = Regexp.new('\\$([0-9]+),[0-9]+\.00 to \\$([0-9]+),[0-9]+\.00', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  low = result[1].to_i * 1000
                  high = result[2].to_i * 1000

                  return [low, high]
                end

                # Salary Format: $100,000 to $200,000
                regex = Regexp.new('\\$([0-9]+),[0-9]+ to \\$([0-9]+),[0-9]+', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  low = result[1].to_i * 1000
                  high = result[2].to_i * 1000

                  return [low, high]
                end

                # Salary Format: $100,000 - $200,000 USD
                regex = Regexp.new('\\$([0-9]+),[0-9]+ - \\$([0-9]+),[0-9]+ USD', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  low = result[1].to_i * 1000
                  high = result[2].to_i * 1000

                  return [low, high]
                end
              end

              tree.concat(curr_node.children)
            end

            nil
          end
        end
      end
    end
  end
end