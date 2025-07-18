module AllTaxonomiesPlugin
  class AllTaxonomiesGenerator < Jekyll::Generator
    safe true
    priority :low

    def generate(site)
      all_tags = Hash.new { |hash, key| hash[key] = [] }
      all_categories = Hash.new { |hash, key| hash[key] = [] }

      # Iterate through all collections (not just posts)
      site.collections.each_value do |collection|
        collection.docs.each do |doc|
          if doc.data['tags']
            doc.data['tags'].each do |tag|
              all_tags[tag] << doc
            end
          end

          if doc.data['categories']
            Array(doc.data['categories']).each do |category|
              all_categories[category] << doc
            end
          end
        end
      end

      site.data["csocs"] = "Hello from plugin"
      # Make available to Liquid templates
      site.data['all_tags'] = all_tags
      site.data['all_categories'] = all_categories

      # puts "[Plugin] Tags generated: #{all_tags.keys.size}"
      # puts "[Plugin] First tag: #{all_tags.keys.first}"
      # puts "[Plugin] Docs in first tag: #{all_tags[all_tags.keys.first]&.map { |d| d.url }}"

      # Jekyll.logger.info "[Plugin]", "Tags generated: #{all_tags.keys.size}"
      # Jekyll.logger.info "[Plugin]", "First tag: #{all_tags.keys.first}"
      # Jekyll.logger.info "[Plugin]", "Docs in first tag: #{all_tags[all_tags.keys.first]&.map(&:url)}"
    end
  end
end
