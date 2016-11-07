Given(/^a puzzle input\(secret code\)$/) do                                        
end 

When(/^I start a program$/) do                                                     
  @result = capture(:stdout){ Day4::Program.new.start }
end

Then(/^I should see "([^"]*)"$/) do |message|                                         
  expect(@result).to match(/Answer:/)      
end  