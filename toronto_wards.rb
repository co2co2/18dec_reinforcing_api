require "httparty"

toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)

toronto_wards_json["objects"].each_with_index{|w| puts w["name"]}

toronto_representatives_response = HTTParty.get('https://represent.opennorth.ca/representatives/')
toronto_representatives_jason = JSON.parse(toronto_representatives_response.body)

toronto_representatives_jason["objects"].each_with_index{|r| puts r["name"]}
