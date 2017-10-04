class HomeController < ApplicationController
    def index
        @malla = Malla.find_by name: 'Ingeniería de Sistemas'
    end
end
