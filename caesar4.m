function txt = caesar2(phrase,key)
    txt = double(phrase) + key;
    txt = char(mod(txt - 32, 126 - 32 + 1) + 32);
end