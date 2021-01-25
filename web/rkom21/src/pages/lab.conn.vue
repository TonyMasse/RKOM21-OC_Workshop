<template>
  <q-page class="bg-grey-10 text-grey-5 q-pa-md">
    <div class="text-h3 q-mb-sm">
      Lab Connection Instructions
    </div>
    <div class="text-h6 q-mb-sm">
      Web Console
    </div>
    <div class="">
      <a class="a_style" target="_blank" :href="'https://' + currentTeam.teamServer + 'XDR.logrhythme3.com/dashboard'">https://{{ currentTeam.teamServer }}XDR.logrhythme3.com/dashboard</a>
    </div>

    <div class="text-h6 q-my-sm">
      SSH Instructions
    </div>
    <div class="text-bold">
      Windows
    </div>
    <ol>
      <li> Download the PuTTY key file from here: <a class="a_style" target="_blank" href="https://logrhythm.sharepoint.com/:u:/s/Sales2/sales-engineering/EdNaWxXgvu1FtIcXW09udi4BiWDTa6OM60HzJfnfo2UVJA?e=oG2PsP">https://logrhythm.sharepoint.com/:u:/s/Sales2/sales-engineering/EdNaWxXgvu1FtIcXW09udi4BiWDTa6OM60HzJfnfo2UVJA?e=oG2PsP</a> </li>
      <li> Open <b>PuTTY</b> </li>
      <li> Put the following in the <b>Host Name</b> field:
        <pre>centos@{{ currentTeam.teamServer }}OC.logrhythme3.com</pre> </li>
      <li> In <b>Connection</b> > <b>SSH</b> > <b>Auth</b>, point the "<b>Private key file for authentication</b>" to the PPK you just downloaded </li>
      <li> Hit <b>Open</b>, </li>
      <li> Once in, enter:
        <pre>su - logrhythm</pre> </li>
    </ol>
    <div class="text-bold">
      Mac/Linux
    </div>

    <ol>
      <li> Download the SSH private key from here: <a class="a_style" target="_blank" href="https://logrhythm.sharepoint.com/:u:/s/Sales2/sales-engineering/EUZYascEQ1VDhz2FapldlCMBv-2zyX-nKQoVMGrcXDa4eA?e=Qfihp8">https://logrhythm.sharepoint.com/:u:/s/Sales2/sales-engineering/EUZYascEQ1VDhz2FapldlCMBv-2zyX-nKQoVMGrcXDa4eA?e=Qfihp8</a> </li>
      <li> Enter:
        <pre>ssh -i "PATH/TO/FILE" centos@{{ currentTeam.teamServer }}OC.logrhythme3.com</pre> </li>
      <li> Once in, enter:
        <pre>su - logrhythm</pre> </li>
    </ol>

    <div class="text-bold">
      Bonus points
    </div>
    <ul>
      <li> For WinSCP, download the SSH private key from the Mac/Linux instructions and use that to authenticate</li>
    </ul>

    <div class="text-h6 q-mb-sm">
      RDP Instructions
    </div>
    <ul>
      <li> RDP Address: <pre>{{ currentTeam.teamServer }}XDR.logrhythme3.com</pre></li>
      <li> Username: <pre>.\Administrator</pre></li>
      <li> Password: <pre>{{ currentTeam.key }}</pre></li>
    </ul>

  </q-page>
</template>

<script>
import { mapState } from 'vuex'

export default {
  name: 'PageLabConn',
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
<style>
</style>
