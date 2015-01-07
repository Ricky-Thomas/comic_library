module API

  def self.char_search(query)
    list = ComicVine::API.search('character', query)
    list = list.find_all {|i| i.name.downcase == query}
    sorted_list = list.sort_by {|i| i.count_of_issue_appearances}
    return sorted_list.last
  end

  def self.get_volumes
    ComicVine::API.volumes
  end



end
