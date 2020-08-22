module Gutenough
  class Chapter
    def initialize(paragraphs)
      @paragraphs = paragraphs
    end

    def to_s
      @paragraphs.map(&:to_s).join("\n\n")
    end

    def paragraphs
      @paragraphs
    end
  end
end
