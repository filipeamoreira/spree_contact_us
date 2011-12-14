module SpreeContactUs
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_migrations
        rake("railties:install:migrations FROM=spree_contact_us")
      end

      def run_migrations
         res = ask "Would you like to run the migrations now? [Y/n]"
         if res == "" || res.downcase == "y"
           rake("db:migrate")
         else
           puts "Skiping rake db:migrate, don't forget to run it!"
         end
      end

    end
  end
end

