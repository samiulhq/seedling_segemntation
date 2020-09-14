filenames=dir('TestData\TestOriginalImage\*TIF');
scale=2;
for i=1:length(filenames)
    I=imread(fullfile('TestData\TestOriginalImage\\',filenames(i).name));
    I=imresize(I,1/scale);
    imwrite(I,fullfile('TestData\TestImg\',filenames(i).name));
end

filenames=dir('TestData\TestOriginalLabel\*png');
for i=1:length(filenames)
    I=imread(fullfile('TestData\TestOriginalLabel\',filenames(i).name));
    I=imresize(I,1/scale);
    imwrite(I,fullfile('TestData\TestLabel\',filenames(i).name));
end