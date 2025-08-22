function w=position(output, input)
 w = [
        (74 * cos(pi*input/180)) + (175 * cos(output(1))) + 201.076 - (110.1 * cos(output(2)));
        (74 * sin(pi*input/180)) + (175 * sin(output(1))) + 18.356 - (110.1 * sin(output(2)))
    ];   
end
