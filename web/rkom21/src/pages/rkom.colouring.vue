<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      RKOM Colouring Page
    </div>
    <div class="text-h6 q-mb-sm">
      Hint
    </div>
    Don't use crayons directly onto your screen, please print before instead.
    <div class="q-mt-xl">
      <img
        alt="RKOM21 Colouring"
        src="Coloring_Book.png"
        width="100%"
      >
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'PageMPEFields',
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
