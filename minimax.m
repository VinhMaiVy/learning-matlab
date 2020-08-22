function [mmr, mmm] = minimax(M)
    mmr = (max(M,[],2) - min(M,[],2)).';
    mmm = max(M(:))-min(M(:));
   