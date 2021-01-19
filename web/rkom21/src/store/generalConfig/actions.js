import axios from 'axios'

export function getGeneralConfig ({ commit }) {
  console.log('Getting GeneralConfig.')
  axios.get('generalConfig.json')
    .then(function (response) {
      console.log(response)
      if (typeof response.data.teams === 'object') {
        console.log('Valid response')
        console.log(response.data)
        commit('updateGeneralConfig', response.data)
      } else {
        console.log('No "teams" object in Ajax data.')
      }
    })
    .catch(function (error) {
      console.log(error)
    })
}
