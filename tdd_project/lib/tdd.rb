class Array

    def my_uniq
        hash = {}
        self.each { |ele| hash[ele] = true }
        hash.keys
    end

    def two_sum
        indices = []
        (0...self.length - 1).each_with_index do |i|
            (i + 1...self.length).each_with_index do |j|
                indices << [i, j] if self[i] + self[j] == 0
            end
        end
        indices
    end

    def my_tranpose
        new_arr = Array.new(self.length) {Array.new}
        (0...self.length).each do |i|
            self.each do |row|
                new_arr[i] << row[i]
            end
        end
        new_arr
    end

    def stock_finder
        hash = Hash.new(0)
        (0...self.length - 1).each do |i|
            (i + 1...self.length).each do |j|
                hash[[i, j]] = self[j] - self[i]
            end
        end
        sorted = hash.sort_by{ |k, v| v }
        sorted[-1][0]
    end

end

class TowersOfHanoi

    attr_accessor :piles

    def initialize(n)
        @n = n
        @piles = Array.new(3) {Array.new}
        piles[0] += (1..n).to_a.reverse
    end

    def [](pile)
        @piles[pile]
    end

    def print
        @piles.each do |row|
            p row
        end
    end

    def play
        $moves = 0
        until won?
            begin
                puts "Enter a start pile"
                start_pile = gets.chomp.to_i
                puts "Enter an end pile"
                end_pile = gets.chomp.to_i
                # raise ""
                raise "Cannot place larger disk on smaller disk" if end_pile > 2 || (!@piles[end_pile].empty? && @piles[start_pile].last > @piles[end_pile].last)
                el = @piles[start_pile]
                @piles[end_pile] << el.pop
                self.print
                $moves += 1
            rescue => e
                puts e.message
            retry
            end
        end
    end

    def won?
       return "You won" if @piles.any? { |pile| pile = [4, 3, 2, 1] } && $moves > (2 ** @n) - 1
    end

end

