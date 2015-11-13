function [] = sendEmailOnFailure(errorInfo, addr)

% matlab function that takes as input the catch statement from a thrown error, 
% then sends an email to the address specified detailing the error type and which line threw it
% requires: unix system with mailx working (probably)

subj = sprintf('%s; %s in file %s at line %d.',errorInfo.identifier,errorInfo.message(1:end-1),errorInfo.stack.file,errorInfo.stack.line);
system(sprintf('mailx -s "%s" < /dev/null "%s"',subj,addr))

end
