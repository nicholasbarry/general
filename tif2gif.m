function [] = tif2gif(stack,filename)

for n=1:size(stack,4);
    [imind,cm]=rgb2ind(stack(:,:,:,n),256,'nodither');
    if n==1;
        imwrite(imind,cm,[filename,'.gif'],'DelayTime',0,'Loopcount',inf);
    else
        imwrite(imind,cm,[filename,'.gif'],'DelayTime',0,'WriteMode','append');
    end
end

end
