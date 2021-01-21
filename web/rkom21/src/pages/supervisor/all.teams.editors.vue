<template>
  <q-page class="bg-grey-10 text-grey-5">
    <div class="row justify-center q-gutter-none">
      <div class="column col-md-auto q-gutter-none" v-for="team in teams" :key="team.code" :style="'width: ' + 100 / teams.length + '%;'">
        <div class="text-center text-bold">
          Team <span style="text-decoration: underline;">{{ team.name.substring(0, 1) }}</span>{{ team.name.substring(1) }}
        </div>
        <div class="bg-grey-8">
          <iframe style="width: 100%; height: calc(50vh - 25px)" :src="team.editorBaseUrl + '/p/' + team.code + '_is_mistnet.jq'" frameborder="1"></iframe>
        </div>
        <div class="bg-grey-8">
          <iframe style="width: 100%; height: calc(50vh - 25px)" :src="team.editorBaseUrl + '/p/' + team.code + '_mistnet.jq'" frameborder="1"></iframe>
        </div>
      </div>
    </div>
  </q-page>
</template>

<script>
import { mapState } from 'vuex'

export default {
  name: 'PageSupervisorAllTeamsEditors',
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
      const url = this.currentTeam.editorBaseUrl + '/p/' + this.teamId + '_mistnet_SOLUTION.jq'
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
