<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      OCPipeline Help
    </div>
    <div class="text-h6 q-my-sm">
      Online version:
    </div>
    <a class="a_style" target="_blank" href="https://docs.logrhythm.com/docs/OCbeats/logrhythm-open-collector/create-custom-open-collector-pipelines">https://docs.logrhythm.com/docs/OCbeats/logrhythm-open-collector/create-custom-open-collector-pipelines</a>
  </q-page>
</template>

<script>
export default {
  name: 'PageOcpipelineHelp',
  data () {
    return {
      teamId: ''
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
