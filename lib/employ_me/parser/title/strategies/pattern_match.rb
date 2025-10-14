module EmployMe
  module Parser
    module Title
      module Strategies
        class PatternMatch
          # Return [title, seniority]
          def self.perform(root_node)
            tree = [root_node]

            # Depth First Search
            while tree.size > 0
              curr_node = tree.shift

              if curr_node.children.all? { |child| child.name == "comment" || child.name == 'text' }
                curr_node_text = curr_node.text

                # Title: Principal Machine Learning Engineer
                regex = Regexp.new('Principal Machine Learning Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Principal Machine Learning Engineer', 'staff']
                end

                # Title: Staff Data Engineer
                regex = Regexp.new('Staff Data Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Staff Data Engineer', 'staff']
                end

                # Title: Staff iOS Engineer
                regex = Regexp.new('Staff iOS Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Staff iOS Engineer', 'staff']
                end

                # Title: Staff Software Engineer
                regex = Regexp.new('Staff Software Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Staff Software Engineer', 'staff']
                end

                # Title: Senior Data Engineer
                regex = Regexp.new('Senior Data Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Data Engineer', 'senior']
                end

                # Title: Senior Frontend Engineer
                regex = Regexp.new('Senior Frontend Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Frontend Engineer', 'senior']
                end

                # Title: Senior Full Stack Engineer
                regex = Regexp.new('Senior Full Stack Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Full Stack Engineer', 'senior']
                end

                # Title: Senior iOS Engineer
                regex = Regexp.new('Senior iOS Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior iOS Engineer', 'senior']
                end

                # Title: Senior Machine Learning Engineer
                regex = Regexp.new('Senior Machine Learning Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Machine Learning Engineer', 'senior']
                end

                # Title: Senior Security Engineer
                regex = Regexp.new('Senior Security Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Security Engineer', 'senior']
                end

                # Title: Senior Site Reliability Engineer
                regex = Regexp.new('Senior Site Reliability Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Site Reliability Engineer', 'senior']
                end

                # Title: Senior Software Engineer
                regex = Regexp.new('Senior Software Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Senior Software Engineer', 'senior']
                end

                # Title: Front-End Software Engineer
                regex = Regexp.new('Front-End Software Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Front-End Software Engineer', 'midlevel']
                end

                # Title: Software Engineer
                regex = Regexp.new('Software Engineer', Regexp::IGNORECASE)
                result = regex.match(curr_node_text)

                if result
                  return ['Software Engineer', 'midlevel']
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