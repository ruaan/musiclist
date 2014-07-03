class Album < ActiveRecord::Base
  mount_uploader :albumCover, PictureUploader
  has_many :songs
  validates :artistName, :albumCover, :albumName, :genre, :presence => true
    	validates :artistName, :length => { :minimum => 2, :maximum => 50 }
    	validates :albumName, :length => { :minimum => 2, :maximum => 50  }
    	validates :albumName, :uniqueness => true  
      
      def self.search(search)
        if search
          where('artistName LIKE ?', "%#{search}%")
        else
          scoped
        end
      end
end
