namespace :update_user do
  task allow_password_change: :environment do
    User.all.each do |user|
      user.allow_password_change = true
      user.save
    end
    puts "Updated user allow password change."
  end
end
