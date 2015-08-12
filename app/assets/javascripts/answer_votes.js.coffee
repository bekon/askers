$ -> 
  $(document).ready ->
    $('.vote-icon').click ->
      answerId = $(this).next().val()

      $.ajax
        url: '/answer_votes.json'
        type: 'POST'
        dataType: 'json'
        data: { answerId: answerId }
        success: ->
          element = $(this).closest('.votes_amount')
          amount = parseInt(element.text())
          amount++
          element.text(amount)
