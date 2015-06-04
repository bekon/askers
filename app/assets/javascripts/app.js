/**
 * Created by bekon on 05.06.15.
 */
function logout() {
    $.ajax({
        url: '/users/sign_out',
        type: 'DELETE',
        success: function() {
            location.href = '/questions';
        }
    });
}