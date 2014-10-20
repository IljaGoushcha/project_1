require 'HTTParty'

ILJAS_MAPQUEST_KEY="Fmjtd%7Cluurnuut25%2C80%3Do5-9wr0qa"

HTTParty.get("http://www.mapquestapi.com/traffic/v2/markets?key=ILJAS_MAPQUEST_KEY")

HTTParty.get("http://www.mapquestapi.com/traffic/v2/incidents?key=ILJAS_MAPQUEST_KEY&callback=handleIncidentsResponse&boundingBox=42.561321,-71.332297,42.155409,-70.782980&filters=construction,incidents&inFormat=kvp&outFormat=json")

