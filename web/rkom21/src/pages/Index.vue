<template>
  <q-page class="">
    <div class="col text-center bg-lr_draw q-pb-none q-mb-none">
      <img
      alt="SE TEAM"
      src="~assets/SE_Team.png"
      width="50%"
      style="min-width: 350px"
      class="q-my-sm"
      >
    </div>
    <div class="col text-center">
      <img
      alt="---------------------"
      src="~assets/rkom.separator.(.svg"
      width="100%"
      >
      <img
        alt="RKOM21"
        src="~assets/rkom21.svg"
        width="30%"
        style="min-width: 250px"
        class="q-mb-lg"
      >
      <div class="q-my-xl text-h3 text-purple-9">
        <span class="text-bold">SE Workshop</span> - Supporting Custom Beats
      </div>
      <div class="">
        <div class="row justify-center q-gutter-xs">
          <div class="column col-md-auto q-gutter-xs" v-for="team in teams" :key="team.code">
            <div class="team_table_header q-pa-sm text-center text-bold">
              Team <span style="text-decoration: underline;">{{ team.name.substring(0, 1) }}</span>{{ team.name.substring(1) }}
            </div>
            <div class="q-pa-sm bg-grey-3">
              <q-btn :to="'/Team/' + team.code" color="deep-purple" glossy label="Go To Server" no-caps/>
            </div>
          </div>
          <!-- <div class="column col-md-auto q-gutter-xs">
            <div class="team_table_header q-pa-sm text-center text-bold">
              Team <span style="text-decoration: underline;">A</span>IE
            </div>
            <div class="q-pa-sm bg-grey-3">
              <q-btn to="/Team/A" color="deep-purple" glossy label="Go To Server" no-caps/>
            </div>
          </div>
          <div class="column col-md-auto q-gutter-xs">
            <div class="team_table_header q-pa-sm text-center text-bold">
              Team <span style="text-decoration: underline;">B</span>eat
            </div>
            <div class="q-pa-sm bg-grey-3">
              <q-btn to="/Team/B" color="deep-purple" glossy label="Go To Server" no-caps/>
            </div>
          </div>
          <div class="column col-md-auto q-gutter-xs">
            <div class="team_table_header q-pa-sm text-center text-bold">
              Team <span style="text-decoration: underline;">C</span>ase
            </div>
            <div class="q-pa-sm bg-grey-3">
              <q-btn to="/Team/C" color="deep-purple" glossy label="Go To Server" no-caps/>
            </div>
          </div>
          <div class="column col-md-auto q-gutter-xs">
            <div class="team_table_header q-pa-sm text-center text-bold">
              Team <span style="text-decoration: underline;">D</span>X
            </div>
            <div class="q-pa-sm bg-grey-3">
              <q-btn to="/Team/D" color="deep-purple" glossy label="Go To Server" no-caps/>
            </div>
          </div> -->
        </div>
      </div>
    </div>
  </q-page>
</template>

<script>
import { mapState, mapActions } from 'vuex'

export default {
  name: 'PageIndex',
  computed: {
    ...mapState('generalConfig', ['teams'])
  },
  methods: {
    ...mapActions('generalConfig', ['getGeneralConfig'])
  },
  mounted () {
    if (!this.teams.length) {
      this.getGeneralConfig()
    }
  }
}
</script>

<style lang="css" >
.team_table_header {
  background: rgb(0,48,95);
  color: white;
}
</style>
