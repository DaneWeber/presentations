# Windows:
# docker run -it --rm --name new-presentation -v ${PWD}:/usr/src/myapp -w /usr/src/myapp ruby:2.5 ruby new-presentation.rb -v

# If this screws up permissions, you might need to run the following:
# sudo chown dane:dane -R FolderName

require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: new-presentation.rb [options] TITLE"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
end.parse!

title = ARGV.join(' ')
name = title.split(' ').map(&:capitalize).join('')

url = 'https://daneweber.github.io/presentations'

files = {
  "#{name}.md" => "# #{title}\n\n",
  'readme.md' => "[#{title}](#{url}/#{name}/#{name}.html)\n\n"
}

html = File.read(File.join('Template', 'template.html'))
html.sub!(%r{-[^-<]+</title>}, "- #{title}</title>")
html.sub!(%r{data-markdown="[^"]+"}, %Q{data-markdown="#{name}.md"})

files["#{name}.html"] = html

serve = File.read(File.join('Template', 'serve.ps1'))
serve.sub!('/name/name.html', "/#{name}/#{name}.html")

files["serve.ps1"] = serve

Dir.mkdir(name)
Dir.chdir(name) do
  files.each{ |fname, content| File.write(fname, content) }
end

File.open("README.md", "a") do |handle|
  handle << "\n#{files['readme.md']}"
end
