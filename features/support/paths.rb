# encoding: utf-8

module NavigationHelpers
  def path_to(page_name)
    case page_name
      when /new tourist destination/
        new_tourist_destination_path
      when /create tourist destination/
        tourist_destinations_path
      when /tourist destination list/
        tourist_destinations_path
      when /new country/
        new_country_path
      when /countries list/
        countries_path
      else
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
