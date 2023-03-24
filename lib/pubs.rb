require 'yaml'

def render_publications
    publications = YAML.load(File.read('publications.yaml'))

    html = []
    publications.each do |publication|
      html << <<~HTML
        <div class="row">
          <div class="col w-4">
            <div class="center">
              <img src="#{publication['image']['src']}" alt="#{publication['image']['alt']}">
            </div>
          </div>
          <div class="col w-8">
            <div class="papert">
              #{publication['title']}
            </div>
            <div class="papera">
              #{publication['authors']}
            </div>
            <div class="paperv">
              #{publication['conference']}
            </div>
            <div class="paperl">
              <ul>
                #{publication['links'].map { |link| "<li><a href=\"#{link['url']}\">#{link['label']}</a></li>" }.join("\n")}
              </ul>
            </div>
          </div>
        </div>
      HTML
    end

    html.join("\n")
end
