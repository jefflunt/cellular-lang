require 'minitest'

def require_all(path)
  Dir.glob(path) { |f| require f }
end

def load_sample(name)
  samples_path = File.join(File.expand_path(File.dirname(__FILE__)), 'samples/')
  IO.read("#{samples_path}#{name}.cellular")
end

if __FILE__ == $0
  $LOAD_PATH.unshift('lib', 'test')

  require_all('./lib/**/*.rb')
  require_all('./test/**/*_test.rb')
end
