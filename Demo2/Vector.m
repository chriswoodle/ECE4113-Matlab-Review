classdef Vector
    properties
        head % End
        tail % Start
    end
    methods
        function obj = Vector(h,t)
            obj.head = h;
            obj.tail = t;
        end
        function d = length(obj)
            d = sqrt( ...
                (obj.head.x - obj.tail.x).^2 + ...
                (obj.head.y - obj.tail.y).^2 ...
                );
        end
    end
end