helpers do
  def display_page num
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
end
