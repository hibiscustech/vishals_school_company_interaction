class CreateUserProfiles < ActiveRecord::Migration
  def self.up
    execute %Q{  CREATE TABLE `user_profiles` (
                `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                `first_name` varchar(30) NOT NULL,
                `last_name` varchar(30) DEFAULT NULL,
                `gender` enum('m','f') NOT NULL DEFAULT 'm',
                `address1` varchar(50) NOT NULL,
                `address2` varchar(50) DEFAULT NULL,
                `city` varchar(30) NOT NULL,
                `state` varchar(30) NOT NULL,
                `zipcode` varchar(10) NOT NULL,
                `contact_number` varchar(15) NOT NULL,
                `email_address` varchar(50) NOT NULL,
                `user_id` int(11) unsigned NOT NULL,
                `dob` int(11) unsigned DEFAULT NULL,
                PRIMARY KEY (`id`),
                KEY `user_id` (`user_id`),
                CONSTRAINT `user_profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
              ) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 }
  end

  def self.down
    drop_table :user_profiles
  end
end
