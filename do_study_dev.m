

warning off; %turn this back on for debug..

mult = 1;


for j = 0:2
    if j == 0
        mult = 1.0;
        continue
    end       
    if j == 1
        mult = 1.0;
    end  
    if j == 2
        mult = 1.0;
        continue
    end
    
    % SET THE VARIABLE TO SWEEP HERE (switch out thte LHS)
    base_name = 'thermal_trans';
    % -------
    disp(sprintf('%f\t\t j: %f',j));
    disp(sprintf('Gain: %f',mult));
    %don't forget to change the base name

    fname = sprintf('output/%s__mult_%1.4f.mat',base_name,mult);
    %compose the string

    disp('start sim')
    sim('Xe_Model_Redo_June_26');
    %res = ans
    disp('end sim')

    toSave_Xe = res_model; %It needs this hack to work for whatever reason...
    toSave_t = tout;

    save(fname,'toSave_t','toSave_Xe');
    
disp('Cycle Done!!!')
end
disp('!!!!PARAM STUDY DONE!!!!!')
load gong
%sound(y,Fs)

%Tested June 13, 2019 @ 2:05pm...appears to work, haven't made any plots
%yet to verify....