class Song < ActiveRecord::Base
  has_many :playlists, inverse_of: :song
  has_many :comments, inverse_of: :song

  def self.search_songs(key)
      client = SoundCloud.new(:client_id => 'b42fce0c05bc046484daed8a1de48bd8')
      tracks = client.get('/tracks', :q => "#{key}")
      tracks.map do |t|
        {id: t.id, title: t.title, duration: t.duration, link: t.permalink_url, desc: t.description}
      end
      # {soundcloud_ids: tracks.map{|track| track.id}, titles: tracks.map{|track| track.title}}
      tracks.each do |track|
  puts track.title
end
  end

end
