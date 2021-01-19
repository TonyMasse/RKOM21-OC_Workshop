<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      MPE Fieds
    </div>
    <div class="text-h6 q-mb-sm">
      Note
    </div>
    The PDF is the version you want, as it's much more straight forward.<br>
    All you need are the tags of the fields, and the PDF list them pretty close together, as opposed to the Online Help, that gives tons of details about each one of them and their use.

    <div class="text-h6 q-my-sm">
      PDF version
    </div>
    <a class="a_style" target="_blank" href="LogRhythm-NextGen-SIEM-7.4.8-Help-RevA%20-%20MPE%20Fields.pdf">LogRhythm-NextGen-SIEM-7.4.8-Help-RevA - MPE Fields.pdf</a>

    <div class="text-h6 q-my-sm">
      Online version:
    </div>
    <a class="a_style" target="_blank" href="https://docs.logrhythm.com/docs/enterprise/logrhythm-schema-dictionary-and-guide">https://docs.logrhythm.com/docs/enterprise/logrhythm-schema-dictionary-and-guide</a>
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
