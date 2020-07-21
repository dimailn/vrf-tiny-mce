import RfTinyMce from './rf-tiny-mce'

export default {
  install: (Vue, options) ->
    Vue::$vrfTinyMCE ||= {
      TinyMCE: options.TinyMCE
      options: options.options
    }
}