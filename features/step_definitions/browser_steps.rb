Given /^the application is running at "(.*?)"$/ do |domain|
  Capybara.default_host = "#{domain}"
  Capybara.server_port = 9887 # could be any of your choice
  Capybara.app_host = "http://#{domain}:#{Capybara.server_port}" #if Capybara.current_driver == :selenium  
end

Then /^the css guidelines should be followed for the following pages$/ do |table|
  paths = table.rows.map{|row| row.first}
  paths.each{|path| verify_guidelines(path) }
end

def verify_guidelines(path)
  visit path

  raise("Could not find a cactus report on #{path}") unless page.has_css?('#cactus')

  cactus_report = find('#cactus')
  failures = cactus_report.all(".cactus_fail")

  if failures.present?
    message = "Css guidelines not followed on '#{path}'\n"
      failures.each do |failure|
        message += "- #{failure.text}\n"
      end
    raise(message)
  end
end


# NOT USING ANYMORE
When /^I go to "(.*?)"$/ do |path|
  visit path
end

Then /^the css guidelines should be followed$/ do
  cactus_report = find('#cactus')
  failures = cactus_report.all(".cactus_fail")

  raise("Could not find a cactus report") unless cactus_report.present?

  if failures.present?
    message = "Css guidelines not followed on '#{page.current_url}'\n"
      failures.each do |failure|
        message += "- #{failure.text}\n"
      end
    raise(message)
  end
end

