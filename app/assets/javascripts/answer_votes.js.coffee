$ -> 
  $('.answer-vote-icon').click ->
    answerId = $(this).next().val()

    $.ajax
      url: '/answer_votes.json'
      type: 'POST'
      dataType: 'json'
      data: { questionId: answerId }
      success: =>
        $element = $(@).parent().children('.votes-amount')
        newAmount = parseInt($element.text(), 10) + 1
        $element.text(newAmount)
