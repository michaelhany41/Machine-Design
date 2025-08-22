function w=velocityCrank(output, input1,input2,input3,input4,input5)
 w = [
        -(input3 * 110.1 * sin(pi*input1/180)) - (input4 * 193.7 * sin(pi*(input2-143.6)/180)) - (output(1) * 175.8 * sin(pi*input5/180)) - (output(2) * cos(pi));
         (input3 * 110.1 * cos(pi*input1/180)) + (input4 * 193.7 * cos(pi*(input2-143.6)/180)) + (output(1) * 175.8 * cos(pi*input5/180)) - (output(2) * sin(pi))
    ];   
end