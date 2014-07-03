class Song < ActiveRecord::Base
  belongs_to :album
    	validates :songName, :presence => true
    	validates :songName, :length => { :minimum => 2, :maximum => 20 }

      def self.search(search)
        if search
          where('songName LIKE ?', "%#{search}%")
        else
          scoped
        end
      end
end
