class Book < ActiveRecord::Base

	validates_presence_of :author, :name, :isbn



	def self.search(search)
	  if search
	    find(:all, :conditions => ['name LIKE ? or author LIKE ?', "%#{search}%", "%#{search}%"])
	  else
	    find(:all)
	  end
	end


end
