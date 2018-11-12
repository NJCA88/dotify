import { combineReducers } from 'redux';
import sessionReducer from './session';
import collectionReducer from './collection';
import entitiesReducer from './entities';
import errorsReducer from './errors';
import uireducer from './ui';

export default combineReducers({
  entities: entitiesReducer,
  session: sessionReducer,
  ui: uireducer,
  errors: errorsReducer
});



// songs: songReducer,
// albums: albumReducer,


// collection: collectionReducer
