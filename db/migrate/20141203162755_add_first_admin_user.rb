class AddFirstAdminUser < ActiveRecord::Migration
  def change
    AdminUser.create!(:email => 'admin@spendx.in', :password => 'password', :password_confirmation => 'password')
  end
end
