include ActionView::Helpers::NumberHelper


module ApplicationHelper

    def meta_description
        'GRUPO JK COMERCIAL, Grupo Jeremias e Kanguito, são um grupo de empreendedores focados em promover negócios e serviços inovadores em Angola, trabalhando com parceiros para encontrar soluções rápidas aos desafios do mercado local.'
    end

    def meta_keywords
        "Grupo JK Comercial, Grupo JK Comercial Angola, Jeremias, Kanguito, empreendedores, negócios, serviços, inovadores, Angola"
    end



    def setting
        Setting.first
    end

    def picture_home_path
        '/banner.png'
    end


    Float.class_eval do
        def to_kwanza
            valor = self
            valor = 0 if valor.blank?
            number_to_currency(valor, unit: "AOA", separator: ",", delimiter:".", format: "%n %u")
        end

        def to_round
            valor = self
            valor = 0 if valor.blank?
            response = '%.2f' % valor.truncate(2)

            return response
        end
    end

    Integer.class_eval do
        def to_kwanza
            self.to_f.to_kwanza
        end

        def to_round
            valor = self
            valor = 0 if valor.blank?
            response = '%.2f' % valor.truncate(2)
            
            return response
        end
    end

    BigDecimal.class_eval do
        def to_kwanza
            self.to_f.to_kwanza
        end

        def to_round
            valor = self
            valor = 0 if valor.blank?
            response = '%.2f' % valor.truncate(2)
            
            return response
        end
        
    end


end
