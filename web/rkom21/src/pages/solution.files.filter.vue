<template>
  <q-page class="bg-grey-10 text-grey">
    Solution Files: Filter
  </q-page>
</template>

<script>
export default {
  name: 'PageSolutionFilesFilter',
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
