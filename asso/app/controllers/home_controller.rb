class HomeController < ApplicationController
    def index
        @career = Career.find_by name: 'Ingeniería de Sistemas'
        @malla = @career.mallas.find_by name: 'Ingeniería de Sistemas'
    end
end
