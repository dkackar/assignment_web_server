require 'rubygems'
#require 'bundler/setup'
require 'mechanize'

# # Instantiate a new Mechanize
# agent = Mechanize.new

# # Grab and parse our page in one step
# # like we did with Nokogiri and open-uri
# page = agent.get('http://google.com/')

# # Grab the form of class="f" from the page
# google_form = page.form('f')

# # Grab the form by ID or action
# another_form = page.form_with(:id => "some-id")
# another_form = page.form_with(:action => "/some_path")

# # Fill in the field named "q" (Google's search query)
# google_form.q = 'ruby mechanize'

# # Actually submit the form
# page = agent.submit(google_form)

# # Print out the page using the "pretty print" command
# pp page



require 'rubygems'
require 'mechanize'
agent = Mechanize.new
page = agent.get('http://google.com/')
g_form = page.form('f')
g_form.q = 'ruby mechanize'
#page = agent.submit(g_form,g_form.buttons.first)
pp page


require 'rubygems'
require 'mechanize'
agent = Mechanize.new

#page = agent.get('http://dice.com/')
# dice_form = page.form_with(:action => 'Jobs')
# dice_form.q = 'ruby'
# page = agent.submit(dice_form,dice_form.buttons.first)
# pp page

agent.get('http://dice.com/') { |page| result = page.form_with(:action => '/jobs') do |search|
        search.q = 'ruby'
end.submit


