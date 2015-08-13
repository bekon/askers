$ -> 
  $(document).ready ->
    $('.vote-icon').click ->
      answerId = $(this).next().val()
      self = this

      $.ajax
        url: '/question_votes.json'
        type: 'POST'
        dataType: 'json'
        data: { questionId: answerId }
        success: ->
          element = $(self).parent().children('.votes-amount')
          amount = parseInt(element.text())
          amount++
          element.text(amount)
