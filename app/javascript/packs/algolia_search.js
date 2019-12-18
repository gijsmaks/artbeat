
const algoliaSearch = () => {
  var places = require('places.js');
  var placesAutocomplete = places({
      appId: 'plISPH73IKY6',
      apiKey: 'b89562b961b8abce70c139c1fbff3059',
      container: document.querySelector('#search_query')
    });
}

export { algoliaSearch };
