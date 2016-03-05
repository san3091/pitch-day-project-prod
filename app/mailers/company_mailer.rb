class CompanyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.company_mailer.registration_confirm.subject
  #
  def registration_confirm comapny
    @company = company

    mail to: "#{company.name} <#{company.email}", subject: "Confirm your registration with Bid.Aero"
  end
end
