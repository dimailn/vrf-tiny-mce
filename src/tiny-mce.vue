<template>

<div ref="tiny" />

</template>

<script lang="coffee">
import debounce from 'lodash.debounce'

export default {
  props:
    value: String
  mounted: ->
    throw "VrfTinyMCE must be installed before using" unless @$vrfTinyMCE

    options = {}

    options = {
      ...options
      ...@$vrfTinyMCE.options
    } if @$vrfTinyMCE.options

    options = {
      ...options
      target: @$refs.tiny
      init_instance_callback: (editor) =>
        @$vrfTinyMCE.options?.init_instance_callback(editor)

        @editor = editor

        editor.on('change', (e) =>
          @onInput editor.getContent()
        )
        editor.on('input', (e) =>
          @onInput editor.getContent()
        )

        @invalidate()
    }

    @$vrfTinyMCE.TinyMCE.init(options)


  beforeDestroy: ->
    @editor?.destroy()

  watch:
    value: ->
      return unless @editor

      @invalidate()

  methods:
    invalidate: ->
      @editor.setContent(@value) if @value? && @editor?.getContent?() != @value
    onInput: debounce(
        (content) ->
          @$emit 'input', content
        20
      )


}

</script>
