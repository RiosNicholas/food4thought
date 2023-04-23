/* HERE Maps API */
var platform = new H.service.Platform ({
    'apikey': 'rPJO5lgTmu6yAcpcddFGXTLRbwrUTcWwjp-kAKCbPBg'
    // HERE Maps API key
});  

// Obtain the default map types from the platform object:
var defaultLayers = platform.createDefaultLayers();

// Instantiate (and display) a map object:
const mapContainer = document.querySelector('#map-container');
const map = new H.Map(mapContainer, defaultLayers.vector.normal.map, {
    center: { lat: 40.7128, lng: -74.0060 }, // Default to NYC
    zoom: 10
  });

/* Takes User Input and Search for Food Banks in Area */
function searchFoodBanks(location) {
    const geocodingService = platform.getSearchService();
  
    geocodingService.geocode({ q: location }, (result) => {
      const [latitude, longitude] = result.items[0].position;
  
      const searchService = platform.getSearchService();
      const params = {
        at: `${latitude},${longitude}`,
        q: 'food bank',
        limit: 10 // searches within 10km
      };
  
      searchService.discover(params, (result) => {
        map.removeObjects(map.getObjects()); // remove any existing markers from the map

        result.items.forEach((item) => {
            const marker = new H.map.Marker({
                lat: item.position[0],
                lng: item.position[1]
        });
        map.addObject(marker);
      });
      }, console.error);
    }, console.error);
  }
  
// Evenet Listener for Searching Map
const form = document.querySelector('#search-form');
form.addEventListener('submit', (event) => {
  event.preventDefault();

  const locationInput = document.querySelector('#location-input');
  const location = locationInput.value;

  searchFoodBanks(location);
});
