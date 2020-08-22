module Gutenug
  class Book
    def initialize(blob)
      paragraphs = []
      buffer = []
      blob.split("\n").map(&:strip).each do |line|
        if line.empty?
          paragraphs << Paragraph.new(buffer)
          buffer.clear
        else
          buffer << line
        end
      end
      paragraphs << Paragraph.new(buffer) unless buffer.empty?
      @chapters = []
      candidates = []
      paragraphs.chunk(&:status).each do |chunk|
        if chunk.first == :invalid
          _add_chapter(candidates)
          candidates.clear
        else
          candidates << chunk
        end
      end
      _add_chapter(candidates)
    end

    def to_s
      @chapters.map(&:to_s).join("\n\n* * *\n\n")
    end

    def chapters
      @chapters
    end

    private

    def _add_chapter(candidates)
      return unless candidates.any? { |chunk| chunk.first == :valid }
      paragraphs = candidates.reduce([]) { |paragraphs, chunk| paragraphs | chunk.last }
      return unless paragraphs.length > 1
      @chapters << Chapter.new(paragraphs)
    end
  end
end
