require 'pragmatic_segmenter'

module Gutenough
  class Paragraph
    def initialize(blob)
      segmenter = PragmaticSegmenter::Segmenter.new(text: blob.join(' '))
      @sentences = segmenter.segment
      _validate
    end

    def to_s
      @sentences.join(" ")
    end

    def sentences
      @sentences
    end

    def valid!
      @invalid = false
    end

    def invalid!
      @invalid = true
    end

    def invalid?
      @invalid
    end

    def suspect?
      @suspect
    end

    def status
      if invalid?
        :invalid
      elsif suspect?
        :suspect
      else
        :valid
      end
    end

    private

    def _validate
      @invalid = @sentences.empty?
      @invalid ||= @sentences.length == 1 && @sentences.first !~ /[?!.]+["'_)\]]*$/ && sentences.first !~ /[-][-]$/
      @suspect = @invalid
      @suspect ||= @sentences.all? { |sentence| sentence !~ /[a-z]/ }
    end
  end
end
