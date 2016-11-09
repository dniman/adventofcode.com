Given(/^a puzzle input\(secret key\)$/) do                                                                                                            
end 

When(/^I start a program with "([^"]*)"$/) do |key|                                                                                                  
  program = Day4::Program.new
  @answer = capture(:stdout){ program.start(key) }                                                                         
end

Then(/^I should see "([^"]*)"$/) do |message|                                         
  expect(@answer).to include(message)      
end  

Then(/^the answer should be "([^"]*)"$/) do |answer|                                                                                                    
  expect(@answer).to include(answer)                                                                           
end 