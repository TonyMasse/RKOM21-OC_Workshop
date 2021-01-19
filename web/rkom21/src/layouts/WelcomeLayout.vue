<template>
  <q-layout view="lHh Lpr lFf">
    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { mapState, mapActions } from 'vuex'
export default {
  name: 'WelcomeLayout',
  data () {
    return {
      leftDrawerOpen: false
    }
  },
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

<style lang="css" scoped >
</style>
