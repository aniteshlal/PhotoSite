class LoadData < ActiveRecord::Migration[4.2]
  def up
    # Create initial users.
    down
    jb = User.new(:first_name => "Justin", :last_name => "Bieber")
    jb.save(:validate => false)
    ph = User.new(:first_name => "Paris",  :last_name => "Hilton")
    ph.save(:validate => false)
    mc = User.new(:first_name => "Miley",  :last_name => "Cyrus")
    mc.save(:validate => false)
    bo = User.new(:first_name => "Barack", :last_name => "Obama")
    bo.save(:validate => false)
    sc = User.new(:first_name => "Santa", :last_name => "Claus")
    sc.save(:validate => false)
    jo = User.new(:first_name => "John", :last_name => "Ousterhout")
    jo.save(:validate => false)

  end

  def down
    User.delete_all
  end
end