export function updateGeneralConfig (state, ajaxDetails) {
  if (typeof ajaxDetails.teams !== 'undefined') {
    state.teams = ajaxDetails.teams
  }
}
