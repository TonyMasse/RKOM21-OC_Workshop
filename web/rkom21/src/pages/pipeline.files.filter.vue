<template>
  <q-page class="bg-grey-10 text-grey-5">
    <!-- Pipeline Files: Filter -->
    <iframe v-if="teamId" style="width: 100%; height: calc(100vh - 25px)" :src="editorUrl" frameborder="0"></iframe>
  </q-page>
</template>

<script>
import { mapState } from 'vuex'

export default {
  name: 'PagePipelineFilesFilter',
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
      const url = this.currentTeam.editorBaseUrl + '/p/' + this.teamId + '_is_mistnet.jq'
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
