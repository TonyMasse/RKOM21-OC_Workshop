<template>
  <q-item
    :clickable="link.length > 0"
    tag="a"
    :href="href"
    :class="(sub ? 'q-ml-lg' : '')"
  >
    <q-item-section
      v-if="icon"
      avatar
    >
      <q-icon :name="icon" />
    </q-item-section>

    <q-item-section>
      <q-item-label>{{ title }}</q-item-label>
      <q-item-label caption class="text-grey">
        {{ caption }}
      </q-item-label>
    </q-item-section>
  </q-item>
</template>

<script>
export default {
  name: 'DrawLink',
  props: {
    title: {
      type: String,
      required: true
    },

    caption: {
      type: String,
      default: ''
    },

    link: {
      type: String,
      default: ''
    },

    icon: {
      type: String,
      default: ''
    },

    sub: {
      type: Boolean,
      default: false
    },
    baseLink: {
      type: String,
      default: ''
    }
  },
  computed: {
    href () {
      if (this.link.length) {
        return this.baseLink + this.link
      } else {
        return '#'
      }
    }
  }
}
</script>
