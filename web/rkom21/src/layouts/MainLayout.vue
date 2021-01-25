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
        <a :href="'/#/Team/' + teamId">
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
      <q-list>
        <DrawLink
          v-for="(link, index) in drawLinks"
          :key="index"
          v-bind="link"
          :baseLink="'/#/Team/' + teamId + '/'"
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
    title: 'Lab Connection Instructions',
    caption: 'SSH and RDP details',
    icon: 'dvr',
    link: 'lab.conn'
  },
  {
    title: 'MPE Fields',
    icon: 'description',
    link: 'mpe.fields'
  },
  {
    title: 'OCPipeline & LRJQ Help',
    icon: 'description',
    link: 'ocpipeline.help'
  },
  {
    title: 'Online Tools',
    caption: 'JSON and JQ tools',
    icon: 'handyman',
    link: 'online.tools'
  },
  {
    title: 'Log Samples',
    icon: 'expand_more'
  },
  {
    title: 'Originals',
    caption: 'As produced by the Log Source',
    sub: true,
    icon: 'receipt_long',
    link: 'log.sample.originals'
  },
  {
    title: 'Via File Beat',
    caption: 'As File Beat sends it',
    sub: true,
    icon: 'receipt_long',
    link: 'log.sample.filebeat'
  },
  {
    title: 'Pipeline Files',
    caption: 'Edit the content as a Team',
    icon: 'expand_more'
  },
  {
    title: 'Filter',
    caption: 'Pipeline JQ Filter',
    icon: 'code',
    sub: true,
    link: 'pipeline.files/filter'
  },
  {
    title: 'Transform',
    caption: 'Pipeline JQ Transform',
    icon: 'code',
    sub: true,
    link: 'pipeline.files/transform'
  },
  {
    title: 'Solution',
    caption: 'If you are stuck.',
    icon: 'expand_more'
  },
  {
    title: 'Filter',
    caption: 'Hint: Use the Timeslider.',
    icon: 'code',
    sub: true,
    link: 'solution.files/filter'
  },
  {
    title: 'Transform',
    caption: 'Hint: Use the Timeslider.',
    icon: 'code',
    sub: true,
    link: 'solution.files/transform'
  },
  {
    title: 'I\'m from Marketing',
    caption: 'Get me out of here!',
    icon: 'brush',
    link: 'rkom.colouring'
  }
]

export default {
  name: 'MainLayout',
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
