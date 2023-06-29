function [root] = bsdsRoot()
% function [root] = bsdsRoot()
%
% Return the root directory for the BSDS data.
%
% David R. Martin <dmartin@eecs.berkeley.edu>
% March 2003
if getenv("computername")=='BENNYK'
    root = 'C:\Study\Datasets\BSD\300\BSDS300';
else
    root = 'D:\DataSet\BSD\300\BSDS300';
end

