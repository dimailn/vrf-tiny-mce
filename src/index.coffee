import RfTinyMce from './rf-tiny-mce'

export default {
  install: (Vue, options) ->
    Vue.component('RfTinyMce', RfTinyMce)

    Vue::$vrfTinyMCE ||= {
      TinyMCE: options.TinyMCE
      options: options.options
    }
}