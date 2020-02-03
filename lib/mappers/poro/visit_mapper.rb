# frozen_string_literal: true

require 'mappers/poro/page_view_mapper'

module Mappers
  module Poro
    # Poro visits mapper
    class VisitMapper < BaseMapper
      EVID_CLEARUP_REGEXP = \
        /.*([A-z0-9]{8}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{4}-[A-z0-9]{12}).*/.freeze

      map from('/referrerName'), to('/evid') do |value|
        value.sub(EVID_CLEARUP_REGEXP, '\1')
      end
      map from('/idSite'),        to('/vendor_site_id')
      map from('/idVisit'),       to('/vendor_visit_id')
      map from('/visitIp'),       to('/visit_ip')
      map from('/visitorId'),     to('/vendor_visitor_id')
      map from('/actionDetails'), to('/author_names'), using: PageViewMapper
    end
  end
end
