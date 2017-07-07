FactoryGirl.define do
	factory :user do
		email "test@test.com"
		password "Safepa$$word"
		read false
		write false
		remove false
	end 
  
end