/* carousel */
$(document).ready(function() {
    /*  booking form validation rules 
     ---------------------------------- */
    $("#bookingForm").validate({
        errorClass: "statError",
        validClass: "stateSuccess",
        errorElement: "em",
        onkeyup: false,
        onclick: false,
        rules: {
            picking_up: {
                required: true,
                minlength: 2
            },
            gender: {
                required: true,
                //minlength: 2
            },
            pick_up_date: {
                required: true
            }
        },
        messages: {
            picking_up: {
                required: 'gd',
            },
            gender: {
                required: 'et'
            },
            pick_up_date: {
                required: 'eg',
            } 
        },
        highlight: function (element, errorClass, validClass) {
            $(element).closest('.hihihi').addClass(errorClass).removeClass(validClass);
        },
        unhighlight: function (element, errorClass, validClass) {
            $(element).closest('.hihihi').removeClass(errorClass).addClass(validClass);
        }
    });
});
