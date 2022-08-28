class Movie < ActiveRecord::Base
    
    def self.create_with_title (title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end
     
    def self.last_movie 
        Movie.last
    end

    def self.movie_count 
        Movie.count
    end

    def self.find_movie_with_id (id)
        Movie.find_by_id(id)
    end

    def self.find_movies_after_2002 
        Movie.where("release_date > ?",2002)
    end

    def update_with_attributes (title, director, release_date, lead,in_theaters)
        self.update(title:title, director:director, release_date:release_date,lead:lead, in_theaters:in_theaters)
    end

    def self.update_all_titles (new_title)
        Movie.update(:all, title: new_title)
    end

    def self.delete_by_id (id)
        Movie.destroy_by(id)
    end

    
    def self.delete_all_movies 
        Movie.destroy_all
    end




end