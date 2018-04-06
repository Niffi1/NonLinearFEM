function F = Ftensor(PosicoesNodaisMat,PosicoesNodaisEsp,delNdelX)
    % Calculates de deformation gradient F

%     Nnos = size(PosicoesNodaisEsp,1);


%     F = zeros(3);
% 
%     for i= 1 : 3
%         for j = 1 : 3
%             for a = 1 : Nnos
%            F(i,j) = F(i,j) + PosicoesNodaisEsp(a,i) * delNdelX(j,a) ;
%             end
%         end
%     end

U = PosicoesNodaisEsp - PosicoesNodaisMat;
GradU = delNdelX * U;
F = GradU + eye(3);


end
