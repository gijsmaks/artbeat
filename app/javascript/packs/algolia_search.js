
const algoliaSearch = () => {
  const container = document.querySelector('#search_query')
  if (container) {
    var places = require('places.js');
    var placesAutocomplete = places({
        appId: 'plISPH73IKY6',
        apiKey: 'b89562b961b8abce70c139c1fbff3059',
        container: container
      });
  }
}

export { algoliaSearch };
