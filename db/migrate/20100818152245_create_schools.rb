class CreateSchools < ActiveRecord::Migration
  def self.up
    execute %Q{ CREATE TABLE `schools` (
                `id` int(11) unsigned NOT NULL auto_increment,
                `school_name` varchar(100) default NULL,
                `city` varchar(50) default NULL,
                `state` varchar(50) default NULL,
                `deleted` enum('Yes','No') default 'No',
                `address1` varchar(50) default NULL,
                `address2` varchar(50) default NULL,
                `zipcode` varchar(50) default NULL,
                `website` varchar(255) default NULL,
                `phone` varchar(255) default NULL,
                `detail` varchar(255) default NULL,
                PRIMARY KEY  (`id`)
              ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1}
  end

  def self.down
    drop_table :schools
  end
end
