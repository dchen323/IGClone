import * as APIUtil from '../utils/follow_api_util';
export const RECEIVE_FOLLOWERS = 'RECEIVE_FOLLOWERS';
export const RECEIVE_FOLLOW = 'RECEIVE_FOLLOW';
export const REMOVE_FOLLOW = 'REMOVE_FOLLOW';

export const receiveFollowers = ({users,pictures,comments}) => ({
  type: RECEIVE_FOLLOWERS,
  users,pictures,comments
});

export const receiveFollow = ({follows}) => ({
  type: RECEIVE_FOLLOW,
  follows
});

export const removeFollow = ({follows}) => ({
  type: REMOVE_FOLLOW,
  follows
});

export const fetchFollowers = id => dispatch => (
  APIUtil.fetchFollowers(id)
    .then(res => dispatch(receiveFollowers(res)))
);

export const createFollow = id => dispatch => (
  APIUtil.createFollow(id)
    .then(res => dispatch(receiveFollow(res)))
);

export const deleteFollow = follow => dispatch => (
  APIUtil.deleteFollow(follow)
    .then(res => dispatch(removeFollow(res)))
);