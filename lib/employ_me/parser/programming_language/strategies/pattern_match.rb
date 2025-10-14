module EmployMe
  module Parser
    module ProgrammingLanguage
      module Strategies
        class PatternMatch
          # Return [programming language name]
          def self.perform(root_node)
            tree = [root_node]

            # Depth First Search
            while tree.size > 0
              curr_node = tree.shift

              if curr_node.children.all? { |child| child.name == "comment" || child.name == 'text' }
                curr_node_text = curr_node.text

                # C#
                regex = Regexp.new('C#', Regexp::IGNORECASE)
                return 'c_sharp' if regex.match(curr_node_text)

                # Go
                regex = Regexp.new('Go', Regexp::IGNORECASE)
                return 'go' if regex.match(curr_node_text)

                # Java
                regex = Regexp.new('Java', Regexp::IGNORECASE)
                return 'java' if regex.match(curr_node_text)

                # Javascript
                regex = Regexp.new('Node', Regexp::IGNORECASE)
                return 'javascript' if regex.match(curr_node_text)

                regex = Regexp.new('React', Regexp::IGNORECASE)
                return 'javascript' if regex.match(curr_node_text)

                regex = Regexp.new('Typescript', Regexp::IGNORECASE)
                return 'javascript' if regex.match(curr_node_text)

                # Kotlin
                regex = Regexp.new('Kotlin', Regexp::IGNORECASE)
                return 'kotlin' if regex.match(curr_node_text)

                # Python
                regex = Regexp.new('Python', Regexp::IGNORECASE)
                return 'python' if regex.match(curr_node_text)

                # Ruby
                regex = Regexp.new('Ruby', Regexp::IGNORECASE)
                return 'ruby' if regex.match(curr_node_text)
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