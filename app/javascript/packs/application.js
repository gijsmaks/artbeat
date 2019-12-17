import "bootstrap";
import { generateSaveModal } from "./saved_artwork_modal";
generateSaveModal();

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
initMapbox();

import { detectScroll } from "./index_seachbar"
detectScroll();

import { openTab } from './open_tab';
openTab();
