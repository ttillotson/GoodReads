import { RECEIVE_CURRENT_USER } from '../actions/session_actions';
import merge from 'lodash/merge';

const defaultState = { currentUser: null};

const SessionsReducer = (state=defaultState, action) => {
  Object.freeze(state);
  let newState = merge({}, state);
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      return merge(newState, { currentUser: action.user });
    default:
      return state;
  }
};

export default SessionsReducer;
