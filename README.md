# employ_me

Parse job listings.

## Installation

Install it manually

```bash
gem install employ_me
```

Or add it to your Gemfile:

```ruby
gem "employ_me"
```

## Usage

### Location

Find the location.

```ruby
require 'nokogiri'
require 'employ_me'

listing = <<-HTML
<!DOCTYPE html>
<html>
  <head></head>
  <body>
    <div>San Francisco, CA</div>
  </body>
</html>
HTML

document = Nokogiri::HTML(listing)

state_code, city, state = EmployMe::Parser::Location::Strategies::PatternMatch.perform(document)
```
