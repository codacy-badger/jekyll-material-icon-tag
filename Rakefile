# coding: utf-8
require 'jekyll'

# Extend string to allow for bold text.
class String
  def bold
    "\033[1m#{self}\033[0m"
  end
end

# Rake Jekyll tasks
task :build do
  conf = Jekyll.configuration({
    'source'      => './test/jekyll-material-icon-tag',
    'destination' => './_site/'
  })
  puts 'Building site...'.bold
  Jekyll::Commands::Build.process(profile: true)
end

task :clean do
  puts 'Cleaning up _site...'.bold
  Jekyll::Commands::Clean.process({})
end

# Test generated output has valid HTML and links.
task :test => :build do
  file = File.open("_site/index.html")
  file.includes? "{% icon" do
    raise "Hell"
  end
end

task :default => ["build"]
