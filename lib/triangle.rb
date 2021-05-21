class Triangle
    # write code here
    attr_reader :sides, :kind
    def initialize(x, y, z)
        @sides = [x, y, z].sort

        check_valid(@sides)

        if x == y && y == z
            @kind = :equilateral
        elsif x == y || y == z || x == z
            @kind = :isosceles
        else
            @kind = :scalene
        end
    end

    def kind
        @kind
    end

    def check_valid(sides)
        if @sides.any? { |x| x <= 0 }
            raise TriangleError
        elsif @sides[2] >= @sides[0] + sides[1]
            raise TriangleError
        end
    end

    class TriangleError < StandardError
    end
end
