<template>
  <q-page class="bg-grey-7 text-grey-5">
    <iframe v-if="teams.length" style="width: 100%; height: calc(100vh - 25px)" :src="editorUrl" frameborder="0"></iframe>
  </q-page>
</template>

<script>
import { mapState } from 'vuex'

export default {
  name: 'PageSupervisorEditorLanding',
  data () {
    return {
    }
  },
  computed: {
    ...mapState('generalConfig', ['teams']),
    editorUrl () {
      const url = (this.teams.length ? this.teams[0].editorBaseUrl : '') + '/'
      console.log('editorUrl => ' + url)
      return url
    }
  }
}
</script>
