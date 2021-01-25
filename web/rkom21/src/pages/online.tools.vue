<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      Online Tools
    </div>
    <div class="text-h6 q-my-sm">
      JSON Formatter
    </div>
    <a class="a_style" target="_blank" href="https://jsonformatter.curiousconcept.com/">https://jsonformatter.curiousconcept.com/</a>
    <div class="">
      Helps you work with JSON:
      <ul>
        <li>takes any JSON format (one liner or nicely or nicely formatted) and bring it to a nice human format</li>
        <li>detects errors in JSON</li>
        <li>can fix some JSON errors</li>
      </ul>
    </div>

    <div class="text-h6 q-my-sm">
      JQ Play
    </div>
    <a class="a_style" target="_blank" href="https://jqplay.org/">https://jqplay.org/</a>
    <div class="">
      Runs JQ queries live on your JSON sample.
      <ol>
        <li>Paste you JSON in the <b>JSON</b> field</li>
        <li>Enter your JQ query in the <b>Filter</b> field</li>
        <li>Wait for a second... Magic!</li>
      </ol>
    </div>

    <div class="text-h6 q-my-sm">
      JQ Play - With log samples data and query/filter
    </div>
    <div class="q-mt-sm">
      Below, some examples with the log format we are playing with today.<br>
      One single log (as sent by Filebeat).
      <ul>
        <li>Extracted in its entirety, using the dot (".") query/filter.</li>
        <ul>
          <li><a class="a_style" target="_blank" href="https://jqplay.org/s/3GQYtCSFAg">https://jqplay.org/s/3GQYtCSFAg</a></li>
          <li>Filter (yes, just one single dot):<pre>.</pre></li>
        </ul>
        <li>Extracting only the /log/file/path.</li>
        <ul>
          <li><a class="a_style" target="_blank" href="https://jqplay.org/s/4owgnL1kFE">https://jqplay.org/s/4owgnL1kFE</a></li>
          <li>Filter (please note the initial dot):<pre>.log.file.path</pre></li>
        </ul>
        <li>Extracting only the original log message (the one Filebeat read from the file). As you can see, Filebeat has encoded it. See next point to know how to decode it.</li>
        <ul>
          <li><a class="a_style" target="_blank" href="https://jqplay.org/s/HDET-Opom4">https://jqplay.org/s/HDET-Opom4</a></li>
          <li>Filter:<pre>.message</pre></li>
        </ul>
        <li>And now decoding it.</li>
        <ul>
          <li><a class="a_style" target="_blank" href="https://jqplay.org/s/jbsaOcfWF7">https://jqplay.org/s/jbsaOcfWF7</a></li>
          <li>Filter:<pre>.message | fromjson</pre></li>
        </ul>
      </ul>
    </div>
  </q-page>
</template>

<script>
export default {
  name: 'PageOnlineTools',
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
