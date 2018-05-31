#{
  Name     : c9_29_processing_email.m
  Book     : Hands-on Data Science with Anaconda )
  Publisher: Packt Publishing Ltd. 
  Author   : Yuxing Yan and James Yan
  Date     : 4/6/2018
  email    : yany@canisius.edu
             paulyxy@hotmail.com
#}

function features = extractEmailFeatures(filename, vocabList)
vocablistSize = size(vocabList, 1);
features = zeros(1, vocablistSize);

% read email contents from file
fid = fopen(filename);
if fid
    email_contents = fscanf(fid, '%c', inf);
    fclose(fid);
else
    return;
end

% process email-contents
email_contents = lower(email_contents); % lower-case
email_contents = regexprep(email_contents, '<[^<>]+>', ' '); # strip HTML
email_contents = regexprep(email_contents, '[0-9]+', 'number'); # replace numbers
email_contents = regexprep(email_contents, '(http|https)://[^\s]*', 'httpaddr'); % replace URLs
email_contents = regexprep(email_contents, '[^\s]+@[^\s]+', 'emailaddr'); % replace email-ids
email_contents = regexprep(email_contents, '[$]+', 'dollar'); % replace dollar

% tokenize contents & extract features
while ~isempty(email_contents)
    [str, email_contents] = strtok(email_contents, [' @$/#.-:&*+=[]?!(){},''">_<;%' char(10) char(13)]);
    str = regexprep(str, '[^a-zA-Z0-9]', ''); % remove non-alphanumeric
    % porter-stemmer
    try str = porterStemmer(strtrim(str)); 
    catch str = ''; continue;
    end;
    if length(str) < 1
        continue;
    end
    [val, idx] = max(ismember(vocabList, str));
	if (val == 1)
	    features(idx) = 1;
	endif
end

end