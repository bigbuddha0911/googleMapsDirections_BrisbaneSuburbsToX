clear all
clc

%% add dataset
[num,txt,raw] = xlsread('C:\Users\TJ Lee\Desktop\House\Datasets\Brisbane LGA\20220420000odaddress (units removed and truncated).xlsx')

%% create URL
baseURL

%% get new/redirected url after completing first api request - from https://ch.mathworks.com/matlabcentral/answers/1690165-is-there-a-way-to-get-the-redirect-url-after-a-https-api-request?s_tid=srchtitle
request = matlab.net.http.RequestMessage;
uri = matlab.net.URI('https://goo.gl/maps/co8U2mMv8zFweDzN8');
[response,completedrequest,history] = send(request,uri);
finaluri = history(end).URI;
disp(finaluri);
finaluri.EncordedURI