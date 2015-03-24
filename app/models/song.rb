class Song
  include ActiveModel::Model

  attr_accessor :title, :artist, :path, :url, :artwork

  def to_hash
    attrs = [:title, :artist, :path, :url, :artwork]
    Hash[*(attrs.map { |i| [i, self.send(i)] }.flatten)]
  end
end
