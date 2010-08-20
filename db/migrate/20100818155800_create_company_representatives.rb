class CreateCompanyRepresentatives < ActiveRecord::Migration
  def self.up
    execute %Q{ CREATE TABLE `company_representatives` (
                `id` int(11) unsigned NOT NULL auto_increment,
                `user_id` int(11) unsigned default NULL,
                `company_id` int(11) unsigned default null,
                PRIMARY KEY  (`id`),
                KEY `user_id` (`user_id`),
                KEY `company_id` (`company_id`),
                CONSTRAINT `company_representatives_ibfk_1` FOREIGN KEY (`user_id`)
                REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                CONSTRAINT `company_representatives_ibfk_2` FOREIGN KEY (`company_id`)
                REFERENCES `companies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
              ) ENGINE=InnoDB }
  end

  def self.down
    drop_table :company_representatives
  end
end
