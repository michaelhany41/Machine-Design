function w=accCrank(output, input1,input2,input3,input4,input5,input6,input7,input8)
 w = [
        -(input3^2 * 110.1 * cos(pi*input1/180)) - (input6 * 110.1 * sin(pi*input1/180)) -(input4^2 * 193.7 * cos(pi*(input2-143.6)/180)) - (input7 * 193.7 * sin(pi*(input2-143.6)/180)) -(input8^2 * 175.8 * cos(pi*input5/180)) - (output(1) * 175.8 * sin(pi*input5/180))- (output(2) * cos(pi));
         -(input3^2 * 110.1 * sin(pi*input1/180)) + (input6 * 110.1 * cos(pi*input1/180)) -(input4^2 * 193.7 * sin(pi*(input2-143.6)/180)) + (input7 * 193.7 * cos(pi*(input2-143.6)/180)) -(input8^2 * 175.8 * sin(pi*input5/180)) + (output(1) * 175.8 * cos(pi*input5/180))- (output(2) * sin(pi))
    ];   
end