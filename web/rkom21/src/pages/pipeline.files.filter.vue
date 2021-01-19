<template>
  <q-page class="bg-grey-10 text-grey">
    <!-- Pipeline Files: Filter -->
    <iframe style="width: 100%; height: calc(100vh - 25px)" :src="editorUrl" frameborder="0"></iframe>
  </q-page>
</template>

<script>
export default {
  name: 'PagePipelineFilesFilter',
  data () {
    return {
      teamId: '',
      editorUrl: 'http://oc-tm-19oc.logrhythme3.com:9001/p/is_mistnet.jq'
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
