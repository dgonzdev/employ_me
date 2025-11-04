module EmployMe
  module Parser
    module Location
      module Strategies
        class PatternMatch
          # Return [state code, city name, state name]
          def self.perform(root_node)
            tree = [root_node]

            # Depth First Search
            while tree.size > 0
              curr_node = tree.shift

              if curr_node.children.all? { |child| child.name == "comment" || child.name == 'text' }
                curr_node_text = curr_node.text

                # Remote Jobs
                regex = Regexp.new('Remote', Regexp::IGNORECASE)
                return ['REMOTE', nil, nil] if regex.match(curr_node_text)

                regex = Regexp.new('US & Canada Remote', Regexp::IGNORECASE)
                return ['REMOTE', nil, nil] if regex.match(curr_node_text)

                # San Francisco, CA Jobs
                regex = Regexp.new('San Francisco, CA', Regexp::IGNORECASE)
                return ['CA', 'San Francisco', 'CA'] if regex.match(curr_node_text)

                # San Mateo, CA Jobs
                regex = Regexp.new('San Mateo, CA', Regexp::IGNORECASE)
                return ['CA', 'San Mateo', 'CA'] if regex.match(curr_node_text)

                # Boca Raton, FL Jobs
                regex = Regexp.new('Boca Raton, FL', Regexp::IGNORECASE)
                return ['FL', 'Boca Raton', 'FL'] if regex.match(curr_node_text)

                regex = Regexp.new('Boca Raton, Florida', Regexp::IGNORECASE)
                return ['FL', 'Boca Raton', 'FL'] if regex.match(curr_node_text)

                regex = Regexp.new('Boca Raton, Florida, United States', Regexp::IGNORECASE)
                return ['FL', 'Boca Raton', 'FL'] if regex.match(curr_node_text)

                # Raleigh, NC Jobs
                regex = Regexp.new('Raleigh, NC', Regexp::IGNORECASE)
                return ['NC', 'Raleigh', 'NC'] if regex.match(curr_node_text)

                # New York, NY Jobs
                regex = Regexp.new('New York, NY', Regexp::IGNORECASE)
                return ['NY', 'New York', 'NY'] if regex.match(curr_node_text)

                regex = Regexp.new('New York, New York', Regexp::IGNORECASE)
                return ['NY', 'New York', 'NY'] if regex.match(curr_node_text)

                regex = Regexp.new('New York, New York, United States', Regexp::IGNORECASE)
                return ['NY', 'New York', 'NY'] if regex.match(curr_node_text)

                regex = Regexp.new('New York Office', Regexp::IGNORECASE)
                return ['NY', 'New York', 'NY'] if regex.match(curr_node_text)

                # Seattle, WA Jobs
                regex = Regexp.new('Seattle, WA', Regexp::IGNORECASE)
                return ['WA', 'Seattle', 'WA'] if regex.match(curr_node_text)

                regex = Regexp.new('Seattle, Washington', Regexp::IGNORECASE)
                return ['WA', 'Seattle', 'WA'] if regex.match(curr_node_text)

                regex = Regexp.new('Seattle, Washington, United States', Regexp::IGNORECASE)
                return ['WA', 'Seattle', 'WA'] if regex.match(curr_node_text)
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