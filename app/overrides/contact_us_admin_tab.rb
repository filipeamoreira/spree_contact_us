Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "faq_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:inquiries, :label => :inquiries_tab_admin) %>")