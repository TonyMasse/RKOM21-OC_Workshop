<template>
  <q-page class="bg-grey-10 text-grey">
    Pipeline Files: Transform
  </q-page>
</template>

<script>
export default {
  name: 'PagePipelineFilesTransform',
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
