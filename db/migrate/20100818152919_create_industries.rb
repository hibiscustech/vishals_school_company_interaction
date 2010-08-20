class CreateIndustries < ActiveRecord::Migration
  def self.up
    execute %Q{  CREATE TABLE `industries` (
                  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                  `name` varchar(30) NOT NULL,
                  PRIMARY KEY (`id`)
                ) ENGINE=InnoDB }
  end

  def self.down
    drop_table :industries
  end
end
