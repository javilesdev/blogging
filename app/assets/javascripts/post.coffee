# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
!((i) ->
  'use strict'
  i('body').on('input propertychange', '.floating-label-form-group', (o) ->
    i(this).toggleClass 'floating-label-form-group-with-value', ! !i(o.target).val()
    return
  ).on('focus', '.floating-label-form-group', ->
    i(this).addClass 'floating-label-form-group-with-focus'
    return
  ).on 'blur', '.floating-label-form-group', ->
    i(this).removeClass 'floating-label-form-group-with-focus'
    return
  if i(window).width() > 992
    o = i('#mainNav').height()
    i(window).on 'scroll', { previousTop: 0 }, ->
      s = i(window).scrollTop()
      if s < @previousTop then (if s > 0 and i('#mainNav').hasClass('is-fixed') then i('#mainNav').addClass('is-visible') else i('#mainNav').removeClass('is-visible is-fixed')) else s > @previousTop and i('#mainNav').removeClass('is-visible')
      s > o and !i('#mainNav').hasClass('is-fixed') and i('#mainNav').addClass('is-fixed')

      @previousTop = s
      return
  return
)(jQuery)