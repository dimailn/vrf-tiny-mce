<template>

<tiny-mce v-model="$value" />

</template>

<script lang="coffee">
import TinyMce from './tiny-mce'


export default {
  vrfParent: 'input'
  components: {
    TinyMce
  }
}

</script>
