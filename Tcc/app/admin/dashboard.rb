ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end

    columns do
      column do
        panel "Ultimas avaliações criadas" do
          ol do
            Avaliacao.last(5).map do |avaliacao|
              nome = avaliacao.professor.nome + ' | ' + avaliacao.turma.serie.to_s + '/' + avaliacao.turma.sub + ' ' + avaliacao.disciplina.nome
              li link_to nome, admin_avaliacao_path(avaliacao)
            end
          end
        end
      end
    end
  end # content
end
