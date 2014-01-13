RSpec::Matchers.define :contain do |line|
  match do |file|
    file.contain(line)
  end
end
