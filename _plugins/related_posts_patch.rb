# _plugins/related_posts_patch.rb
module Jekyll
  class RelatedPosts
    def build
      return [] unless all_docs.size > 1

      if site.lsi
        build_index
        lsi_related_posts
      else
        most_recent_posts
      end
    end

    def build_index
      self.class.lsi ||= begin
        require "classifier-reborn"
        lsi = ClassifierReborn::LSI.new(auto_rebuild: false)
        Jekyll.logger.info("Populating LSI...")

        all_docs.each { |doc| lsi.add_item(doc) }

        Jekyll.logger.info("Rebuilding index...")
        lsi.build_index
        Jekyll.logger.info("")
        lsi
      end
    end

    def lsi_related_posts
      self.class.lsi.find_related(post, 11)
    end

    def most_recent_posts
      @most_recent_posts ||= (all_docs.last(11).reverse - [post]).first(10)
    end

    private

    def all_docs
      @all_docs ||= begin
        collections = %w(updates bugs-in-the-soup optimal-banana portfolio)
        collections.flat_map { |c| site.collections[c]&.docs || [] }
      end
    end
  end
end
