class CreateUsers < ActiveRecord::Migration
  def self.up
    execute %Q{ CREATE TABLE `users` (
                `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                `time_created` int(11) unsigned NOT NULL,
                `deleted` enum('Yes','No') NOT NULL DEFAULT 'No',
                `login` varchar(50) DEFAULT NULL,
                `email` varchar(50) DEFAULT NULL,
                `account_type` varchar(50) NOT NULL,
                `salt` varchar(50) DEFAULT NULL,
                `crypted_password` varchar(255) DEFAULT NULL,
                 PRIMARY KEY (`id`)
              ) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 }
  end

  def self.down
    drop_table :users
  end
end
