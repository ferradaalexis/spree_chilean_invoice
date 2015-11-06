Spree::Address.class_eval do
  Spree::PermittedAttributes.address_attributes << [:invoice, :company_activity]

  before_validation :check_invoice_attributes

  validates :company, :company_activity, presence: true, if: :invoice?

  private

  def check_invoice_attributes
    if not self.invoice?
      self.company = nil
      self.company_activity = nil
    end
  end
end