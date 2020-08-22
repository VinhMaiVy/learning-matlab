function coded = caesar(phrase, shift)
 
 coded = phrase;
 for i=1:length(coded)
     if shift > 0
         for j=1:shift
            if coded(i) == 126
                coded(i) = 32;
            else
                coded(i)=coded(i)+1;
            end
         end
     else
         for j=1:shift*(-1)
             if coded(i) == 32
                coded(i) = 126;
            else
                coded(i)=coded(i)-1;
            end
         end
 end
 
end