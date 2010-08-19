class CreateSchoolRepresentatives < ActiveRecord::Migration
  def self.up
    execute %Q{ CREATE TABLE `school_representatives` (
                `id` int(11) unsigned NOT NULL auto_increment,
                `user_id` int(11) unsigned default NULL,
                `school_id` int(11) unsigned default null,
                PRIMARY KEY  (`id`),
                KEY `user_id` (`user_id`),
                KEY `school_id` (`school_id`),
                CONSTRAINT `school_representatives_ibfk_1` FOREIGN KEY (`user_id`)
                REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
                CONSTRAINT `school_representatives_ibfk_2` FOREIGN KEY (`school_id`)
                REFERENCES `schools` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
              ) ENGINE=InnoDB DEFAULT CHARSET=utf8 }
  end

  def self.down
    drop_table :representatives
  end
end
