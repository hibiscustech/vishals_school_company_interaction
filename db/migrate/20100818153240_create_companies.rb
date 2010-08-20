class CreateCompanies < ActiveRecord::Migration
  def self.up
    execute %Q{ CREATE TABLE `companies` (
                `id` int(11) unsigned NOT NULL auto_increment,
                `company_name` varchar(100) default NULL,
                `city` varchar(50) default NULL,
                `state` varchar(50) default NULL,
                `deleted` enum('Yes','No') default 'No',
                `address1` varchar(50) default NULL,
                `address2` varchar(50) default NULL,
                `zipcode` varchar(50) default NULL,
                `website` varchar(255) default NULL,
                `phone` varchar(255) default NULL,
                `detail` varchar(255) default NULL,
                `industry_id` int(11) unsigned NOT NULL,
                PRIMARY KEY  (`id`),
                KEY `industry_id` (`industry_id`),
                CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
              ) ENGINE=InnoDB }
  end

  def self.down
    drop_table :companies
  end
end


