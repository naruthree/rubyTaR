require "optparse"

opt = OptionParser.new

opts = {
  boolean: false,
  string:  '',
  integer: 0,
}

opt.on("-b", "--boolean", "boolean option (default : #{opts[:boolean].to_s}") do |v|
  opts[:boolean] = v
end

opt.on("-s", "--string VALUE", "string option (default : #{opts[:string]})") do |v|
  opts[:string] = v.to_s
end

opt.on("-i", "--integer VALUE", "integer option (default : #{opts[:integer]})") do |v|
  opts[:integer] = v.to_i
end

opt.banner = ' ARG1 ARG2'
begin
  opt.parse!(ARGV)
rescue OptionParser::InvalidOption => e
  usage e.message
end

p opts
