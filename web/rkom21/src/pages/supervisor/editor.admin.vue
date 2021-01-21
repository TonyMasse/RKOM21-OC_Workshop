<template>
  <q-page class="bg-grey-7 text-grey-5">
    <iframe v-if="teams.length" style="width: 100%; height: calc(100vh - 25px)" :src="editorUrl" frameborder="0"></iframe>
  </q-page>
</template>

<script>
import { mapState } from 'vuex'

export default {
  name: 'PageSupervisorEditorAdmin',
  data () {
    return {
      teamId: ''
    }
  },
  computed: {
    ...mapState('generalConfig', ['teams']),
    currentTeam () {
      const teams = this.teams.filter(t => t.code === this.teamId)
      return (teams.length ? teams[0] : {})
    },
    editorUrl () {
      const url = (this.teams.length ? this.teams[0].editorBaseUrl : '') + '/admin/'
      console.log('editorUrl => ' + url)
      return url
    }
  },
  mounted () {
    if (typeof this.$route.params.teamId !== 'undefined') {
      if (this.$route.params.teamId.length) {
        this.teamId = this.$route.params.teamId
      }
    }
  }
}
</script>
