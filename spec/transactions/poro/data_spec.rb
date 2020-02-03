# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Transactions::Poro::Data do
  subject { described_class.new.call }

  it 'return poro data' do
    VCR.use_cassette('poro') do
      expect(subject.success?).to be_truthy
      expect(subject.value!).to eq(response_data)
    end
  end

  private

  def response_data
    [
      {
        evid: '966634dc-0bf6-1ff7-f4b6-08000c95c670',
        vendor_site_id: '209',
        vendor_visit_id: '134853732',
        visit_ip: '24.6.5.33',
        vendor_visitor_id: 'e280af5191b64f18',
        author_names: 
          [
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '50',
              timestamp: 1537623918
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537623579
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '337',
              timestamp: 1537623580
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537623917
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '50',
              timestamp: 1537623918
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&time=1-45-pm&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537623968
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&time=1-45-pm&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '463',
              timestamp: 1537623969
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537624432
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1161',
              timestamp: 1537624433
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=evid&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537625594
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=evid&l=1',
              title: 'Vehicle Loan Information',
              timestamp: 1537625595
            }
          ]
      },
      {
        evid: 'evid_ab7cde02ab-9523-109d-bbb6-c7e845a5b4',
        vendor_site_id: '209',
        vendor_visit_id: '134853338',
        visit_ip: '24.6.5.33',
        vendor_visitor_id: 'e280af5191b64f18',
        author_names: 
          [
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/alert-popup?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Alert Popup',
              time_spent: '15',
              timestamp: 1537623145
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Applicant Information',
              time_spent: '1',
              timestamp: 1537623160
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Applicant Information',
              time_spent: '3',
              timestamp: 1537623161
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537623164
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Vehicle Loan Information',
              timestamp: 1537623165
            }
          ]
      },
      {
        evid: '3385a27a-cc20-8d98-940a-37dad5a93133',
        vendor_site_id: '209',
        vendor_visit_id: '134849628',
        visit_ip: '24.6.5.33',
        vendor_visitor_id: 'e280af5191b64f18',
        author_names: 
          [
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '368',
              timestamp: 1537619480
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/applicant-information?lenderref=Meriwest_test&l=1',
              title: 'Applicant Information',
              time_spent: '1229',
              timestamp: 1537619848
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '0',
              timestamp: 1537621077
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '123',
              timestamp: 1537621077
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/applicant-information?lenderref=Meriwest_test&evid=12-56-pm&l=1',
              title: 'Applicant Information',
              timestamp: 1537621200
            }
          ]
      },
      {
        evid: 'incorrect-evid',
        vendor_site_id: '209',
        vendor_visit_id: '134843051',
        visit_ip: '24.6.5.33',
        vendor_visitor_id: 'e280af5191b64f18',
        author_names: 
          [
            { 
              url: 'https://apptest.loanspq.com/pl/PersonalLoan.aspx/personal-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Personal Loan Information',
              time_spent: '1',
              timestamp: 1537613572
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&rec=1&uid=evid_808asdfaasdv7a6s5dasdfva7s8d6f&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1075',
              timestamp: 1537614509
            },
            {
              url: 'https://apptest.loanspq.com/pl/PersonalLoan.aspx/personal-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Personal Loan Information',
              time_spent: '734',
              timestamp: 1537613573
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537614307
            },
            { 
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '200',
              timestamp: 1537614308
            },
            { 
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&rec=1&uid=evid_808asdfaasdv7a6s5dasdfva7s8d6f&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '1',
              timestamp: 1537614508
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&cb-vid=64c1f015-00ea-f186-6bb8-c545347e3075&l=1',
              title: 'Vehicle Loan Information',
              time_spent: '0',
              timestamp: 1537615584
            },
            {
              url: 'https://apptest.loanspq.com/vl/VehicleLoan.aspx/vehicle-loan-information?lenderref=Meriwest_test&cb-vid=64c1f015-00ea-f186-6bb8-c545347e3075&l=1',
              title: 'Vehicle Loan Information',
              timestamp: 1537615584
            }
          ]
      }
    ]
  end
end
