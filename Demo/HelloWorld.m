classdef HelloWorld
   properties
      Message
   end
   methods
       function displayMessage(obj)
           obj.displayMsg()
       end 
   end
   methods (Static)
      function displaySomething()
         disp("Something");
      end
   end
   methods (Access = private)
       function displayMsg(obj)
           disp(obj.Message);
       end
   end
end

