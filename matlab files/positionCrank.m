function w=positionCrank(output, input1,input2)
 w = [
        (110.1 * cos(pi*input1/180)) + (193.7 * cos(pi*(input2-143.6)/180)) + (175.8 * cos(output(1))) - (output(2) * cos(pi))- (150 * cos(pi/2));
        (110.1 * sin(pi*input1/180)) + (193.7 * sin(pi*(input2-143.6)/180)) + (175.8 * sin(output(1))) - (output(2) * sin(pi))- (150 * sin(pi/2))
    ];   
end