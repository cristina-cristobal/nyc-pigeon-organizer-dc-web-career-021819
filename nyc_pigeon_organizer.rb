# data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

# require 'pry'


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |gen_info, gen_data|
    gen_data.each do |description, names|
      names.each do |pigeon_name|
        pigeon_list[pigeon_name] ||= {}
        pigeon_list[pigeon_name][gen_info] ||= []
        pigeon_list[pigeon_name][gen_info] << description.to_s
      end
    end
  end
pigeon_list
end


# nyc_pidgeon_organizer(data)
