module CreateSlug
    extend ActiveSupport::Concern

    def create_slug
        self.slug = self.title.parameterize
    end
end

