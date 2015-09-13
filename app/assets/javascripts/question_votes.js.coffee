$ -> 
  $(document).ready ->
    $('.question-vote-icon').click ->
      questionId = $(@).next().val()

      $.ajax
        url: '/question_votes.json'
        type: 'POST'
        dataType: 'json'
        data: { questionId: questionId }
        success: =>
          $element = $(@).parent().children('.votes-amount')
          newAmount = parseInt($element.text(), 10) + 1
          $element.text(newAmount)
