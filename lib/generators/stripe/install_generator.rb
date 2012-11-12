module Stripe
  class InstallGenerator < ::Rails::Generators::Base
    source_root File.expand_path("../../templates", __FILE__)

    desc "copy plans.rb"
    def copy_plans_file
      copy_file "plans.rb", "config/stripe/plans.rb"
    end

    desc "copy coupons.rb"
    def copy_coupons_file
      copy_file "coupons.rb", "config/stripe/coupons.rb"
    end
  end
end