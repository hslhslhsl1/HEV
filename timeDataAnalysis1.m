%% Analyize and compare Timeseries data

% Usages
% load tData.mat; 
% [ctData1 ctData2 ctData3] = timeDataAnalysis1(tData1, tData2,interval);

function [varargout] = timeDataAnalysis1(varargin)

    [mm nn] = size(varargin);

    disp("N = "+nn);

    tData1 = varargin{1};
    tData2 = varargin{2};
    interval1 = varargin{3};

    hzdata = floor(tData1.Length / tData2.Length);

    [tData3,tData4] = synchronize(tData2,tData1,'Uniform','Interval',interval1);

     figure(1);
     set(gcf,'color','w');
     grid on;
     tData2.plot;
     figure(2);
     set(gcf,'color','w');
     grid on;
     tData4.plot;


  

    varargout{1} = tData4;
    varargout{2} = tData3;
    varargout{3} = hzdata;

end