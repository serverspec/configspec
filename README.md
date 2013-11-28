# Configspec

A simple configuration management tool powered by RSpec.

## Installation

Add this line to your application's Gemfile:

    gem 'configspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install configspec

## Usage

```
$ configspec-init
Select a backend type:

  1) SSH
  2) Exec (local)

Select number: 1

Vagrant instance y/n: y
Auto-configure Vagrant from Vagrantfile? y/n: n
Input vagrant instance name: www
 + spec/
 + spec/www/
 + spec/www/001_httpd_spec.rb
 + spec/spec_helper.rb
 + Rakefile

$ rake spec
/opt/boxen/rbenv/versions/2.0.0-p247/bin/ruby -S rspec spec/www/001_httpd_spec.rb

Package "httpd"
  should be installed

Finished in 3.44 seconds
1 example, 0 failures
```

The content of ``001_httpd_spec.rb`` is like this.

```ruby
require 'spec_helper'

describe package('httpd') do
  it { should be_installed }
end
```

This spec file runs the command ``yum -y install httpd``.

Now configspec supports only RedHat based OS and package installing.

## Other features

Configspec supports Dockerfile backend.

```
$ configspec-init
Select a backend type:

  1) SSH
  2) Exec (local)
  3) Dockerfile

Select number: 3

 + spec/
 + spec/001_httpd_spec.rb
 + spec/spec_helper.rb
 + Rakefile

$ rake spec
/opt/boxen/rbenv/versions/2.0.0-p247/bin/ruby -S rspec

Package "httpd"
  should be installed

Finished in 0.00229 seconds
1 example, 0 failures

$ cat Dockerfile
RUN yum -y install httpd
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
