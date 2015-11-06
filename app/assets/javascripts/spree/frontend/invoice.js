$(document).on('change', 'input[name="order[bill_address_attributes][invoice]"]', function(e) {
  s_or_b = $(this).closest('ul').data('type')
  invoiceElementsContainer = $('.invoice_' + s_or_b +'_attributes_container');
  if ($(this).val() == "1") {
    $('#shipping').removeClass('hide');
    invoiceElementsContainer.removeClass('hide');
    $('input[name="order[use_billing]"]').val(0)
  } else {
    $('#shipping').addClass('hide');
    invoiceElementsContainer.toggleClass('hide');
    $('input[name="order[use_billing]"]').val(1)
  }
});