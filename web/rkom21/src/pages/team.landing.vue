<template>
  <q-page class="bg-grey-10 flex flex-center text-h1 text-grey">
    Welcome to Team {{ teamId }}
  </q-page>
</template>

<script>
export default {
  name: 'PageTeamLanding',
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
