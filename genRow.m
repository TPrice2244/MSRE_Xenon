function retVal = genRow(n,A,rVec,dr)
%n is the 1-index row number, counting from the top, of the row being
%generated.
%rVec is the 1-indexed position of the node
    
%FIRST ORDER
%C1 = S/dr^2
    %C2 = -(2*S) / (dr^2) - (S) / (dr*rVec(n))
    %C3 = S/dr^2 + S / (dr * rVec(n))
    %retVal =  [C1 C2 C3]
    
    %Second order...checked..sums to zero.
    C1 = -A/12/dr^2 + A/12/dr/rVec(n);
    C2 = 4*A/3/dr^2 - 2*A/3/dr/rVec(n);
    C3 = - 5*A/2/dr^2;
    C4 = 4*A/3/dr^2 + 2*A/3/dr/rVec(n);
    C5 = -A/12/dr^2 - A/12/dr/rVec(n);
    
    retVal = [C1 C2 C3 C4 C5];
end

