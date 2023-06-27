clearvars

present = 'color';
ims_dir = 'D:\DataSet\BSD\300\BSDS300\images\test';
mat_dir = 'D:\MATLAB\github\2DNLMeKGSA\benchset';
ims_data = dir(fullfile(ims_dir, '*.jpg'));
ims_names = {ims_data.name}';

for k_im = 1:length(ims_names)
    [~, iid] = fileparts(ims_names{k_im});
    [imageLabelCell,subjectIDList] = readSegs(present,str2double(iid));
    subjectIDList = cell2mat(subjectIDList);
    save(fullfile(mat_dir,sprintf('%s.mat',iid) ),'imageLabelCell','subjectIDList')
end


