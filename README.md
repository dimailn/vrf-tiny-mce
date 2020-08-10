# vrf-tiny-mce

[Vrf](https://github.com/dimailn/vrf) wrapper for Tiny MCE.

# Getting started

Install vrf-tiny-mce

```
npm i --save vrf-tiny-mce
```

and initialize it in your code

```javascript

import Vrf from 'vrf'
import VrfTinyMCE from 'vrf-tiny-mce'


Vue.use(Vrf, adapters: [VrfTinyMCE({ TinyMCE: tinyMCE, options: tinymceOptions })])

```

... and use it!

```vue

<template>

<rf-form name="Page">
  <rf-tiny-mce name="content" />
</rf-form>

</template>

```
