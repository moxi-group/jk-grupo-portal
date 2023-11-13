class CreateSettings < ActiveRecord::Migration[7.0]
  def change
    create_table :settings do |t|
      t.string :name
      t.string :street
      t.string :address
      t.string :cell_phone1
      t.string :cell_phone2
      t.string :email
      t.text :mission
      t.text :vision
      t.text :values
      t.text :about_us
      t.text :objectives
      t.text :prespective
      t.text :project_text
      t.string :slug

      t.timestamps
    end

    Setting.create(
      name: 'Grupo JK - Jeremias & Kanguito',
      street: 'Bairro Nova vida , distrito urbano do Talatona,',
      address: 'Rua da Agomart Talatona, Edifício Sempre Chique casa S/N Luanda - Angola',
      cell_phone1: '+244942611496',
      cell_phone2: '+244957187343',
      email: 'geral@jk-grupo.com',
      mission: 'Fornecer produtos e serviços inovadores que visam apoiar o empreendedorismo Angolano Criar e desenvolver redes de negócios e comércio',
      vision: 'Ser a maior incubadora de projectos em Angola Ser uma empresa inovadora de projectos, serviços e produtos para empreendedores',
      values: 'Seriedade Honestidade Respeito Ética Responsabilidade',
      about_us: 'Somos um grupo de vários empreendedores com foco na promoção dos negócios e serviços inovadores e trabalhar fortemente com pareceiros na promoção e sluções rápidas aos desafios do mercado Angolano.\n\n\nTrazemos ao mercado inovação, experieência e competência de uma rede de técnicos, habilitados a desafios e a implementar soluções focados em pessoas, processos e resultados.',
      objectives: 'Ser o maior Grupo privado de referência em produtos e serviços para os Empreendedores; Incluir todos os nossos membros em nossa base de dados e participar de nossos eventos e encontros de negócios; Ser a maior força influenciadora para as MPME-Micro Pequenas e Médias Empresas.',
      prespective: 'É cada vez mais frenéticas as empresas enveredarem pelas parcerias e juntos dinamizarem o mercado como sendo o motor das ecomonias, nos focaremos em promover produtos, serviços, drédito e sermos uma força influenciadora do estado para as politicas que facilitarão o surgimento e crescimento das empresas, ferando assim mais ofertas de empregos, rendas e bem estar social;',
      project_text: 'Na busca de inovar nas diversas áreas e acompanhando a dinâmica tecnológica, o Grupo JK propõe um conjunto de serviços e acções integradas para dinamizar o mercado e promover ferramentas que irão agregar valor a vida dos empreendedores, Com presença online nas nossas plataformas.',
    )
  end
end
