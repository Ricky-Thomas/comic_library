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

  def self.load_volume_issues id
    volume = ComicVine::API.volume id
    volume.issues
  end
end

helpers do
  def display_volumes_page num
    volumes = API.get_volumes
      (num - 1).times do
        volumes.next_page
      end
    @volumes = volumes
    @this_page = num
    @next_page = num + 1
    @prev_page = num - 1
    erb :volume_list
  end

  def display_issues_page num, volume_id
    issues = API.load_volume_issues volume_id
      (num - 1).times do
        volumes.next_page
      end
    @issues = issues
    @this_page = num
    @next_page = num + 1
    @prev_page = num - 1
    @volume_id = volume_id
    erb :issue_list
  end
end
