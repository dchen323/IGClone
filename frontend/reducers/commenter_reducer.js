import {RECEIVE_USER} from '../actions/user_actions';
import {RECEIVE_COMMENT} from '../actions/comment_actions';
import {RECEIVE_PICTURE} from '../actions/picture_actions';
import {RECEIVE_FOLLOWERS} from '../actions/follow_actions';
import {merge} from 'lodash';

export const commenterReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_USER:
      return action.commentsAuthor || {};
    case RECEIVE_FOLLOWERS:
      return action.commentsAuthor || {};
    case RECEIVE_COMMENT:
      return merge({}, state, action.commentsAuthor);
    default:
      return state;
  }
};
