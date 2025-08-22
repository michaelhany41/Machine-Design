function m=velocity(output, input1,input2,input3)
 m = [
        -(10 * 74 * sin(pi*input1/180)) - (output(1) * 175 * sin(pi*input2/180)) + (output(2) * 110.1 * sin(pi*input3/180));
        (10 * 74 * cos(pi*input1/180)) + (output(1) * 175 * cos(pi*input2/180)) - (output(2) * 110.1 * cos(pi*input3/180))
    ];   
end
