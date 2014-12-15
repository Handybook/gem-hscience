# HyperScience

A simple ruby wrapper for calls to HyperScience RESTful API.

## Installation

Add this line to your application's Gemfile:

    gem 'hyper_science'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hyper_science

## Usage

**In your initializer**

	HyperScience.host = ENV['HYPERSCIENCE_HOST']
	HyperScience.port = ENV['HYPERSCIENCE_PORT'].to_i
	HyperScience.enabled = ENV['HYPERSCIENCE_ENABLED'].present? && ENV['HYPERSCIENCE_ENABLED'] == 'true'

**Example**:

    > model = HyperScience.get_model('bookings', 'event')
	 => #<HyperScience::Model:0x007f803903b7c0
    >
    > model.calculate(123)
     => "CANCELLATION"


## Contributing

1. Fork it ( http://github.com/Handybook/hyper_science/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

This project rocks and uses MIT-LICENSE.