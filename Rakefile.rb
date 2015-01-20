# Usage: rake minify
desc "Minify files"
task :minify do
  puts '* Minifying files'
  system "java -jar _build/htmlcompressor.jar -r --type html --compress-js -o _site _site"
end # task :minify

# Usage: rake drafts
desc "Build Jekyll site with _drafts posts"
task :drafts do
  system "jekyll build --drafts --limit_posts 10"
end # task :drafts

# Ping Pingomatic
desc 'Ping pingomatic'
task :pingomatic do
  begin
    require 'xmlrpc/client'
    puts '* Pinging ping-o-matic'
    XMLRPC::Client.new('rpc.pingomatic.com', '/').call('weblogUpdates.extendedPing', 'mademistakes.com' , 'https://mademistakes.com', 'https://mademistakes.com/atom.xml')
  rescue LoadError
    puts '! Could not ping ping-o-matic, because XMLRPC::Client could not be found.'
  end
end

# Ping Google
desc 'Notify Google of the new sitemap'
task :sitemapgoogle do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Google about our sitemap'
    Net::HTTP.get('www.google.com', '/webmasters/tools/ping?sitemap=' + URI.escape('https://mademistakes.com/sitemap.xml'))
  rescue LoadError
    puts '! Could not ping Google about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

# Ping Bing
desc 'Notify Bing of the new sitemap'
task :sitemapbing do
  begin
    require 'net/http'
    require 'uri'
    puts '* Pinging Bing about our sitemap'
    Net::HTTP.get('www.bing.com', '/webmaster/ping.aspx?siteMap=' + URI.escape('https://mademistakes.com/sitemap.xml'))
  rescue LoadError
    puts '! Could not ping Bing about our sitemap, because Net::HTTP or URI could not be found.'
  end
end

# rake notify
desc 'Notify various services about new content'
task :notify => [:pingomatic, :sitemapgoogle, :sitemapbing] do
end

# rake rsync
desc 'rsync the contents of ./_site to the server'
task :rsync do
  puts '* rsyncing the contents of ./_site to the server'
  system 'rsync -prvz --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r _site/ ekoagency.com@s98164.gridserver.com:domains/mademistakes.com/html/'
end

# rake deploy
desc 'Minify files, rsync the files, and notify services about new content'
task :deploy => [:minify, :rsync, :notify] do
end

require "rubygems"
require "tmpdir"

require "bundler/setup"
require "jekyll"


# Change your GitHub reponame
GITHUB_REPONAME = "ebaco/ebaco.github.com"


desc "Generate blog files"
task :generate do
  Jekyll::Site.new(Jekyll.configuration({
    "source"      => ".",
    "destination" => "_site"
  })).process
end


desc "Generate and publish blog to gh-pages"
task :publish => [:generate] do
  Dir.mktmpdir do |tmp|
    cp_r "_site/.", tmp

    pwd = Dir.pwd
    Dir.chdir tmp

    system "git init"
    system "git add ."
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m #{message.inspect}"
    system "git remote add origin https://github.com/ebaco/ebaco.github.io.git"
    system "git push origin master --force"

    Dir.chdir pwd
  end
end