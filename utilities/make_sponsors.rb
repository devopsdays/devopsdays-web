require "yaml"
print "Enter the event in YYYY-city format: "
cityname = gets.chomp
config = YAML.load_file("data/events/#{cityname}.yml")
sponsors = config['sponsors']
sponsors.each {|s| 
  if File.exist?("data/sponsors/#{s['id']}.yml")
    puts "The file for #{s['id']} totally exists already"
  else
    puts "I need to make a file for #{s['id']}"
    puts "What is the sponsor URL?"
    sponsor_url = gets.chomp
    sponsorfile = File.open("data/sponsors/#{s['id']}.yml", "w")
    sponsorfile.write "name: #{s['id']}\n"
    sponsorfile.write "url: #{sponsor_url}\n"
    sponsorfile.close
    puts "It will be data/sponsors/#{s['id']}.yml"
  end
}
