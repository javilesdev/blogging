class Post < ApplicationRecord
  before_create :set_slug

  def to_param
    slug
  end

  private

  def set_slug
    loop do
      self.slug = self.title.parameterize
      break unless Post.where(slug: slug).exists?
    end
  end
end
