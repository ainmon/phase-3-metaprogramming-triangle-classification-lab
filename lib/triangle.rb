class Triangle
  attr_reader :a_side, :b_side, :c_side
  
  def initialize(a_side, b_side, c_side)
    @a_side = a_side
    @b_side = b_side
    @c_side = c_side

    if (a_side < 0 || b_side < 0 || c_side < 0)
      begin
        raise TriangleError
      end
    elsif (a_side + b_side <= c_side || b_side + c_side <= a_side || a_side + c_side <= b_side)
      begin
        raise TriangleError
      end
    end
    
  end

  def kind
    if a_side == b_side && b_side == c_side
      :equilateral
    elsif a_side == b_side || b_side == c_side || c_side == a_side
      :isosceles
    else a_side != b_side && b_side != c_side && c_side != a_side
      :scalene 
    end
  end

  class TriangleError < StandardError
    def message
      puts "error!"
    end
  end

end
