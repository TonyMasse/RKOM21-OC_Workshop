<template>
  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar class="bg-lr_gradient" style="min-height: 10px">
        <q-btn
          flat
          dense
          size="xs"
          icon="menu"
          aria-label="Menu"
          color="white"
          @click="leftDrawerOpen = !leftDrawerOpen"
        />
      </q-toolbar>
    </q-header>

    <q-drawer
      v-model="leftDrawerOpen"
      show-if-above
      bordered
      content-class="bg-lr_draw text-white"
    >
      <a href="/#/">
        <img
          alt="RKOM21"
          src="~assets/rkom.top.logo.mini.svg"
          width="100%"
        >
      </a>
      <div class="q-px-sm">
        <a href="/#/supervisor/">
          <img
          alt="SE TEAM"
          src="~assets/SE_Team.png"
          width="100%"
          >
        </a>
      </div>
      <q-separator dark class="q-my-sm"/>
      <div class="text-bold text-center text-h5">
        Workshop
      </div>
      <div class="text-center text-h6">
        Supporting Custom Beats
      </div>
      <q-separator dark class="q-my-sm"/>
      <div class="text-bold text-center text-h5 bg-black">
        Supervisor
      </div>
      <q-separator dark class="q-my-sm"/>
      <q-list>
        <DrawLink
          v-for="(link, index) in drawLinks"
          :key="index"
          v-bind="link"
          baseLink="/#/supervisor/"
          class="q-py-none"
        />
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { mapState, mapActions } from 'vuex'
import DrawLink from 'components/DrawLink.vue'

const linksData = [
  {
    title: 'All Teams Dashboard',
    caption: 'All Editors',
    icon: 'receipt_long',
    link: 'all.teams.editors'
  },
  {
    title: 'Editor Admin',
    icon: 'settings',
    link: 'editor.admin'
  },
  {
    title: 'Editor Landing',
    icon: 'home',
    link: 'editor.landing'
  }
]

export default {
  name: 'SupervisorLayout',
  components: { DrawLink },
  data () {
    return {
      leftDrawerOpen: false,
      drawLinks: linksData,
      teamId: ''
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

    if (typeof this.$route.params.teamId !== 'undefined') {
      if (this.$route.params.teamId.length) {
        this.teamId = this.$route.params.teamId
      }
    }
  }
}
</script>

<style lang="css" scoped >
</style>
