#!/home/piousbox/.rbenv/shims/ruby
#
# descr: Anagram solver.
#        assuming ruby version ~= 1.9.1
#

class AnagramSolver

  def initialize dictfile = nil
    dictfile ||= '/usr/share/dict/american-english'
    @words = Hash.new([])
  
    File.open(dictfile, "r") do |file|
      while line = file.gets
        word = line.downcase.chomp
        @words[word.chars.sort] += [word]
      end
    end
  end

  def solve( this_word )
    return @words[this_word.downcase.chars.sort]
  end

end

puts AnagramSolver.new.solve( 'listen' ).inspect
