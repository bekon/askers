$ -> 
  $(document).ready ->
    $('.vote-icon').click ->
      answerId = $(this).next().val()

      $.ajax
        url: '/question_votes.json'
        type: 'POST'
        dataType: 'json'
        data: { questionId: answerId }
        success: ->
          element = $(this).closest('.votes_amount')
          amount = parseInt(element.text())
          amount++
          element.text(amount)
