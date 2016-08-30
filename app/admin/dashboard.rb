ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
   
    end

    columns do
      column do
        panel "Numero de empresas" do
          Enterprise.all.count
        end
      end

      column do
        panel "Numero de usuarios" do
          User.all.count
        end
      end

      column do
        panel "Numero de reclamos" do
          Complaint.all.count
        end
      end
    end
  end # content
end
