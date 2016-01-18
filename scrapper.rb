url = "https://www.dice.com/jobs?q=ruby&l=San+Jose%2C+CA"

agent = Mechanize.new { |agent| 
    agent.user_agent_alias = 'Windows Chrome'
}