import { combineReducers } from 'redux';
import sessionReducer from './session';
import collectionReducer from './collection';
import entitiesReducer from './entities';
import uireducer from './ui';

export default combineReducers({
  entities: entitiesReducer,
  session: sessionReducer,
  ui: uireducer
});



// songs: songReducer,
// albums: albumReducer,


// collection: collectionReducer
