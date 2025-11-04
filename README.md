# employ_me

Parse job listings.

## Installation

Add the gem to your Gemfile:

```ruby
gem "employ_me"
```

## Usage

### Location

```ruby
require 'nokogiri'

listing = <<-HTML
  123
HTML

document = Nokogiri::HTML(listing)

state_code, city, state = EmployMe::Parser::Location::Strategies::PatternMatch.perform(document)
```
