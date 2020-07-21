<template>

<tiny-mce v-model="value" />

</template>

<script lang="coffee">
import {descriptors} from 'vrf'
import TinyMce from './tiny-mce'


export default {
  extends: descriptors.input
  components: {
    TinyMce
  }

}

</script>
