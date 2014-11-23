require 'json'
@current_year = 2014
@end_year = 1765
@api_key = 'edeab556c7df6f8bde57b33c1150dad3'

def get_breweries_established(year, page = 1)
  uri = URI("http://api.brewerydb.com/v2/breweries?key=#{@api_key}&established=#{year}&p=#{page}")
  JSON.parse(Net::HTTP.get(uri))
end

def all_brewery_locations(year = 2014, breweries_array = [], current_page = 1, total_pages = 1)
  if current_page <= total_pages.to_i
    breweries = get_breweries_established(year, current_page)

    index = 0
    while index < breweries['data'].length
      location_uri = URI("http://api.brewerydb.com/v2/brewery/#{breweries["data"][index]["id"]}/locations?key=#{@api_key}")
      brewery_with_locations = JSON.parse(Net::HTTP.get(location_uri))
      breweries_array += brewery_with_locations['data'] if brewery_with_locations['data']
      index += 1
    end

    current_page += 1
    all_brewery_locations(year, breweries_array, current_page, total_pages)
  else
    breweries_array
  end
end

while @current_year >= @end_year do
  # Request all the breweries establisehd in the current year
  #
  breweries = get_breweries_established(@current_year)
  puts "#{@current_year}: #{breweries['totalResults']}"

  breweries_for_current_year = all_brewery_locations(@current_year, [], 1, breweries['numberOfPages'])
  f = File.open("#{@current_year}-brewery-locations.json", 'w')
  f.write(breweries_for_current_year.to_json)
  f.close

  @current_year -= 1
end

#breweries.keys
# => ["currentPage", "numberOfPages", "totalResults", "data", "status"]

