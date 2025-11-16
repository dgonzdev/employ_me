module EmployMe
  module Parser
    module Technologies
      module Strategies
        class PatternMatch
          # Return Set of technologies
          def self.perform(root_node)
            technologies = Set.new

            tree = [root_node]

            # Depth First Search

            while tree.size > 0
              curr_node = tree.shift

              if curr_node.children.all? { |child| child.name == "comment" || child.name == 'text' }
                curr_node_text = curr_node.text

                # .NET
                regex = Regexp.new('\\.NET', Regexp::IGNORECASE)
                technologies.add(:dotnet) if regex.match(curr_node_text)

                # Airflow
                regex = Regexp.new('Airflow', Regexp::IGNORECASE)
                technologies.add(:airflow) if regex.match(curr_node_text)

                # Android
                regex = Regexp.new('Android', Regexp::IGNORECASE)
                technologies.add(:android) if regex.match(curr_node_text)

                # AWS
                regex = Regexp.new('AWS', Regexp::IGNORECASE)
                technologies.add(:aws) if regex.match(curr_node_text)

                # CSS
                # regex = Regexp.new('CSS', Regexp::IGNORECASE)
                # technologies.add(:css) if regex.match(curr_node_text)

                # Docker
                regex = Regexp.new('Docker', Regexp::IGNORECASE)
                technologies.add(:docker) if regex.match(curr_node_text)

                # Flink
                regex = Regexp.new('Flink', Regexp::IGNORECASE)
                technologies.add(:flink) if regex.match(curr_node_text)

                # Firestore
                regex = Regexp.new('Firestore', Regexp::IGNORECASE)
                technologies.add(:firestore) if regex.match(curr_node_text)

                # GCP
                regex = Regexp.new('GCP', Regexp::IGNORECASE)
                technologies.add(:gcp) if regex.match(curr_node_text)

                # Helm
                regex = Regexp.new('Helm', Regexp::IGNORECASE)
                technologies.add(:helm) if regex.match(curr_node_text)

                # HTML
                # regex = Regexp.new('HTML', Regexp::IGNORECASE)
                # technologies.add(:html) if regex.match(curr_node_text)

                # iOS
                regex = Regexp.new('iOS', Regexp::IGNORECASE)
                technologies.add(:ios) if regex.match(curr_node_text)

                # Istio
                regex = Regexp.new('Istio', Regexp::IGNORECASE)
                technologies.add(:istio) if regex.match(curr_node_text)

                # Kafka
                regex = Regexp.new('Kafka', Regexp::IGNORECASE)
                technologies.add(:kafka) if regex.match(curr_node_text)

                # Karpenter
                regex = Regexp.new('Karpenter', Regexp::IGNORECASE)
                technologies.add(:karpenter) if regex.match(curr_node_text)

                # Kubeflow
                regex = Regexp.new('Kubeflow', Regexp::IGNORECASE)
                technologies.add(:kubeflow) if regex.match(curr_node_text)

                # Kubernetes
                regex = Regexp.new('Kubernetes', Regexp::IGNORECASE)
                technologies.add(:kubernetes) if regex.match(curr_node_text)

                # Linux
                regex = Regexp.new('Linux', Regexp::IGNORECASE)
                technologies.add(:linux) if regex.match(curr_node_text)

                # Node
                regex = Regexp.new('Node', Regexp::IGNORECASE)
                technologies.add(:node) if regex.match(curr_node_text)

                # PostgreSQL
                regex = Regexp.new('Postgres', Regexp::IGNORECASE)
                technologies.add(:postgresql) if regex.match(curr_node_text)

                regex = Regexp.new('PostgreSQL', Regexp::IGNORECASE)
                technologies.add(:postgresql) if regex.match(curr_node_text)

                # Pulsar
                regex = Regexp.new('Pulsar', Regexp::IGNORECASE)
                technologies.add(:pulsar) if regex.match(curr_node_text)

                # React
                regex = Regexp.new('React', Regexp::IGNORECASE)
                technologies.add(:react) if regex.match(curr_node_text)

                # Redux
                regex = Regexp.new('Redux', Regexp::IGNORECASE)
                technologies.add(:redux) if regex.match(curr_node_text)

                # Ruby on Rails
                regex = Regexp.new('Ruby on Rails', Regexp::IGNORECASE)
                technologies.add(:ruby_on_rails) if regex.match(curr_node_text)

                # Snowflake
                regex = Regexp.new('Snowflake', Regexp::IGNORECASE)
                technologies.add(:snowflake) if regex.match(curr_node_text)

                # Spark
                regex = Regexp.new('Spark', Regexp::IGNORECASE)
                technologies.add(:spark) if regex.match(curr_node_text)

                # Tensorflow
                regex = Regexp.new('Tensorflow', Regexp::IGNORECASE)
                technologies.add(:tensorflow) if regex.match(curr_node_text)

                # Terraform
                regex = Regexp.new('Terraform', Regexp::IGNORECASE)
                technologies.add(:terraform) if regex.match(curr_node_text)

                # Typescript
                regex = Regexp.new('Typescript', Regexp::IGNORECASE)
                technologies.add(:typescript) if regex.match(curr_node_text)
              end

              tree.concat(curr_node.children)
            end

            technologies
          end
        end
      end
    end
  end
end