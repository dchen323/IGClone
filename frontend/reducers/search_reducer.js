import {RECEIVE_SEARCH} from '../actions/search_actions';
import {merge} from 'lodash';

const searchReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SEARCH:

    default:
      return state;
  }
}
