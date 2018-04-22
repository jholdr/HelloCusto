class Post < ApplicationRecord

belongs_to :category, optional: true


geocoded_by :location
after_validation :geocode

def location
[city, state].join(', ')
end

def self.search(params)
posts = Post.where(category_id: params[:category].to_i)
posts = posts.where("title like ? or employer like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
posts = posts.near(params[:location], 20) if params[:location].present?
posts
end

def self.import(file)
  CSV.foreach(file.path, headers: true, :header_converters => :symbol) do |row|
  post_hash = row.to_hash
  post = find_or_create_by!(title: post_hash['title'], category_id: post_hash['category'])
  post.update_attributes(post_hash)

end
end


end
