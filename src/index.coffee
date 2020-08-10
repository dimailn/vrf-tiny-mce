import RfTinyMce from './rf-tiny-mce'

export default (options) -> {
  name: 'vrf-tiny-mce'
  components: {
    RfTinyMce
  }
  install: (Vue) ->
    Vue::$vrfTinyMCE ||= {
      TinyMCE: options.TinyMCE
      options: options.options
    }
}