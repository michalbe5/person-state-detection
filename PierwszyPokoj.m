load Pokoj1
ludzie=[d1p01M;d1p02M;d1p03M;d1p04M;d1p05M;d1p06M;d1p07M;d1p08F;d1p09F;d1p10F;d1p11F;d1p12F;d1p13F;d1p14F;d1p15F;d1p16F;d1p17F;d1p18F;d1p19F;d1p20F;d1p21F;d1p22F;d1p23F;d1p24F;d1p25F;d1p26F;d1p27F;d1p28F;d1p29F;d1p30F;d1p31F;d1p32F;d1p33F;d1p34F;d1p35F;d1p36M;d1p37M;d1p38M;d1p39M;d1p40M;d1p41M;d1p42M;d1p43M;d1p44M;d1p45M;d1p46M;d1p47M;d1p48M;d1p49F;d1p50F;d1p51F;d1p52F;d1p53F;d1p54F;d1p55F;d1p56F;d1p57F;d1p58F;d1p59F;d1p60F];
overlapping=3;


%% FRONTALNY AKCELEROMETR

    index = find(ludzie(:,9)==1);
    x1=ludzie(index,2);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniafrontalsitonbed(N)=mean(x1(k-overlapping:k+10,1));
        varfrontalsitonbed(N)=var(x1(k-overlapping:k+10,1));
        medianfrontalsitonbed(N)=median(x1(k-overlapping:k+10,1));
        kurtosisfrontalsitonbed(N)=kurtosis(x1(k-overlapping:k+10,1));
        p1(N)=min(x1(k-overlapping:k+10,1));
        p2(N)=max(x1(k-overlapping:k+10,1));
        p3(N)=std(x1(k-overlapping:k+10,1));
        p4(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
    end
    
    index = find(ludzie(:,9)==2);
    x1=ludzie(index,2);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniafrontalsitonchair(N)=mean(x1(k-overlapping:k+10,1));
        varfrontalsitonchair(N)=var(x1(k-overlapping:k+10,1));
        medianfrontalsitonchair(N)=median(x1(k-overlapping:k+10,1));
        kurtosisfrontalsitonchair(N)=kurtosis(x1(k-overlapping:k+10,1));
        d1(N)=min(x1(k-overlapping:k+10,1));
        d2(N)=max(x1(k-overlapping:k+10,1));
        d3(N)=std(x1(k-overlapping:k+10,1));
        d4(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==3);
    x1=ludzie(index,2);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniafrontallying(N)=mean(x1(k-overlapping:k+10,1));
        varfrontallying(N)=var(x1(k-overlapping:k+10,1));
        medianfrontallying(N)=median(x1(k-overlapping:k+10,1));
        kurtosisfrontallying(N)=kurtosis(x1(k-overlapping:k+10,1));
        t1(N)=min(x1(k-overlapping:k+10,1));
        t2(N)=max(x1(k-overlapping:k+10,1));
        t3(N)=std(x1(k-overlapping:k+10,1));
        t4(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    

    index = find(ludzie(:,9)==4);
    x1=ludzie(index,2);
    n=length(x1);
    n=floor(n);
    N=1;
     for k=4:10:n-10
         sredniafrontalambulating(N)=mean(x1(k-overlapping:k+10,1));
         varfrontalambulating(N)=var(x1(k-overlapping:k+10,1));
         medianfrontalambulating(N)=median(x1(k-overlapping:k+10,1));
         kurtosisfrontalambulating(N)=kurtosis(x1(k-overlapping:k+10,1));
         c1(N)=min(x1(k-overlapping:k+10,1));
        c2(N)=max(x1(k-overlapping:k+10,1));
        c3(N)=std(x1(k-overlapping:k+10,1));
        c4(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
         N=N+1;
         
     end
     
    
    figure(1)
    plot(sredniafrontalsitonbed,'o')
    hold on
    plot(sredniafrontalsitonchair,'o')
    hold on
    plot(sredniafrontallying,'o')
    hold on
    plot(sredniafrontalambulating,'o')
    hold on
    title('akcelerometr frontal')
    ylabel('przyspieszenie')
    xlabel('nr probek')
    legend('sittobed','sitonchair','lying','ambulating')
    
    
    
    
    
    %% PIONOWY AKCELEROMETR
    
    index = find(ludzie(:,9)==1);
    x1=ludzie(index,3);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniapionowasitonbed(N)=mean(x1(k-overlapping:k+10,1));
        varpionowasitonbed(N)=var(x1(k-overlapping:k+10,1));
        medianpionowasitonbed(N)=median(x1(k-overlapping:k+10,1));
        kurtosispionowasitonbed(N)=kurtosis(x1(k-overlapping:k+10,1));
        p5(N)=min(x1(k-overlapping:k+10,1));
        p6(N)=max(x1(k-overlapping:k+10,1));
        p7(N)=std(x1(k-overlapping:k+10,1));
        p8(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==2);
    x1=ludzie(index,3);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniapionowasitonchair(N)=mean(x1(k-overlapping:k+10,1));
        varpionowasitonchair(N)=var(x1(k-overlapping:k+10,1));
        medianpionowasitonchair(N)=median(x1(k-overlapping:k+10,1));
        kurtosispionowasitonchair(N)=kurtosis(x1(k-overlapping:k+10,1));
        d5(N)=min(x1(k-overlapping:k+10,1));
        d6(N)=max(x1(k-overlapping:k+10,1));
        d7(N)=std(x1(k-overlapping:k+10,1));
        d8(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==3);
    x1=ludzie(index,3);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniapionowalying(N)=mean(x1(k-overlapping:k+10,1));
        varpionowalying(N)=var(x1(k-overlapping:k+10,1));
        medianpionowalying(N)=median(x1(k-overlapping:k+10,1));
        kurtosispionowalying(N)=kurtosis(x1(k-overlapping:k+10,1));
        t5(N)=min(x1(k-overlapping:k+10,1));
        t6(N)=max(x1(k-overlapping:k+10,1));
        t7(N)=std(x1(k-overlapping:k+10,1));
        t8(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    

    index = find(ludzie(:,9)==4);
    x1=ludzie(index,3);
    n=length(x1);
    n=floor(n);
    N=1;
     for k=4:10:n-10
         sredniapionowaambulating(N)=mean(x1(k-overlapping:k+10,1));
         varpionowaambulating(N)=var(x1(k-overlapping:k+10,1));
         medianpionowaambulating(N)=median(x1(k-overlapping:k+10,1));
         kurtosispionowaambulating(N)=kurtosis(x1(k-overlapping:k+10,1));
         c5(N)=min(x1(k-overlapping:k+10,1));
        c6(N)=max(x1(k-overlapping:k+10,1));
        c7(N)=std(x1(k-overlapping:k+10,1));
        c8(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
         N=N+1;
         
     end
     
    figure(2)
    plot(sredniapionowasitonbed,'o')
    hold on
    plot(sredniapionowasitonchair,'o')
    hold on
    plot(sredniapionowalying,'o')
    hold on
    plot(sredniapionowaambulating,'o')
    hold on
    title('akcelerometr pionowy')
    ylabel('przyspieszenie')
    xlabel('nr probek')
    legend('sittobed','sitonchair','lying','ambulating')
    
    
    %% AKCELEROMETR BOCZNY
    
    
    index = find(ludzie(:,9)==1);
    x1=ludzie(index,4);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniabocznasitonbed(N)=mean(x1(k-overlapping:k+10,1));
        varbocznasitonbed(N)=var(x1(k-overlapping:k+10,1));
        medianbocznasitonbed(N)=median(x1(k-overlapping:k+10,1));
        kurtosisbocznasitonbed(N)=kurtosis(x1(k-overlapping:k+10,1));
        p9(N)=min(x1(k-overlapping:k+10,1));
        p10(N)=max(x1(k-overlapping:k+10,1));
        p11(N)=std(x1(k-overlapping:k+10,1));
        p12(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==2);
    x1=ludzie(index,4);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniabocznasitonchair(N)=mean(x1(k-overlapping:k+10,1));
        varbocznasitonchair(N)=var(x1(k-overlapping:k+10,1));
        medianbocznasitonchair(N)=median(x1(k-overlapping:k+10,1));
        kurtosisbocznasitonchair(N)=kurtosis(x1(k-overlapping:k+10,1));
        d9(N)=min(x1(k-overlapping:k+10,1));
        d10(N)=max(x1(k-overlapping:k+10,1));
        d11(N)=std(x1(k-overlapping:k+10,1));
        d12(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==3);
    x1=ludzie(index,4);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniabocznalying(N)=mean(x1(k-overlapping:k+10,1));
        varbocznalying(N)=var(x1(k-overlapping:k+10,1));
        medianbocznalying(N)=median(x1(k-overlapping:k+10,1));
        kurtosisbocznalying(N)=kurtosis(x1(k-overlapping:k+10,1));
        t9(N)=min(x1(k-overlapping:k+10,1));
        t10(N)=max(x1(k-overlapping:k+10,1));
        t11(N)=std(x1(k-overlapping:k+10,1));
        t12(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    

    index = find(ludzie(:,9)==4);
    x1=ludzie(index,4);
    n=length(x1);
    n=floor(n);
    N=1;
     for k=4:10:n-10
         sredniabocznaambulating(N)=mean(x1(k-overlapping:k+10,1));
         varbocznaambulating(N)=var(x1(k-overlapping:k+10,1));
         medianbocznaambulating(N)=median(x1(k-overlapping:k+10,1));
         kurtosisbocznaambulating(N)=kurtosis(x1(k-overlapping:k+10,1));
         c9(N)=min(x1(k-overlapping:k+10,1));
        c10(N)=max(x1(k-overlapping:k+10,1));
        c11(N)=std(x1(k-overlapping:k+10,1));
        c12(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
         N=N+1;
         
     end
     
    figure(3)
    plot(sredniabocznasitonbed,'o')
    hold on
    plot(sredniabocznasitonchair,'o')
    hold on
    plot(sredniabocznalying,'o')
    hold on
    plot(sredniabocznaambulating,'o')
    hold on
    title('akcelerometr boczny')
    ylabel('przyspieszenie')
    xlabel('nr probek')
    legend('sittobed','sitonchair','lying','ambulating')
    
    
    
    %% RSSI
    
    
    index = find(ludzie(:,9)==1);
    x1=ludzie(index,6);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniarssisitonbed(N)=mean(x1(k-overlapping:k+10,1));
        varrssisitonbed(N)=var(x1(k-overlapping:k+10,1));
        medianrssisitonbed(N)=median(x1(k-overlapping:k+10,1));
        kurtosisrssisitonbed(N)=kurtosis(x1(k-overlapping:k+10,1));
        p13(N)=min(x1(k-overlapping:k+10,1));
        p14(N)=max(x1(k-overlapping:k+10,1));
        p15(N)=std(x1(k-overlapping:k+10,1));
        p16(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==2);
    x1=ludzie(index,6);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniarssisitonchair(N)=mean(x1(k-overlapping:k+10,1));
        varrssisitonchair(N)=var(x1(k-overlapping:k+10,1));
        medianrssisitonchair(N)=median(x1(k-overlapping:k+10,1));
        kurtosisrssisitonchair(N)=kurtosis(x1(k-overlapping:k+10,1));
        d13(N)=min(x1(k-overlapping:k+10,1));
        d14(N)=max(x1(k-overlapping:k+10,1));
        d15(N)=std(x1(k-overlapping:k+10,1));
        d16(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    
    index = find(ludzie(:,9)==3);
    x1=ludzie(index,6);
    n=length(x1);
    n=floor(n);
    N=1;
    for k=4:10:n-10
        sredniarssilying(N)=mean(x1(k-overlapping:k+10,1));
        varrssilying(N)=var(x1(k-overlapping:k+10,1));
        medianrssilying(N)=median(x1(k-overlapping:k+10,1));
        kurtosisrssilying(N)=kurtosis(x1(k-overlapping:k+10,1));
        t13(N)=min(x1(k-overlapping:k+10,1));
        t14(N)=max(x1(k-overlapping:k+10,1));
        t15(N)=std(x1(k-overlapping:k+10,1));
        t16(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
        N=N+1;
        
    end
    

    index = find(ludzie(:,9)==4);
    x1=ludzie(index,6);
    n=length(x1);
    n=floor(n);
    N=1;
     for k=4:10:n-10
         sredniarssiambulating(N)=mean(x1(k-overlapping:k+10,1));
         varrssiambulating(N)=var(x1(k-overlapping:k+10,1));
         medianrssiambulating(N)=median(x1(k-overlapping:k+10,1));
         kurtosisrssiambulating(N)=kurtosis(x1(k-overlapping:k+10,1));
         c13(N)=min(x1(k-overlapping:k+10,1));
        c14(N)=max(x1(k-overlapping:k+10,1));
        c15(N)=std(x1(k-overlapping:k+10,1));
        c16(N)=(sum((abs(fft(x1(k-overlapping:(k-overlapping:k+10))))).^2))/14;
         N=N+1;
         
     end
     
    figure(4)
    plot(sredniarssisitonbed,'o')
    hold on
    plot(sredniarssisitonchair,'o')
    hold on
    plot(sredniarssilying,'o')
    hold on
    plot(sredniarssiambulating,'o')
    hold on
    title('sygnal radiowy')
    ylabel('RSSI')
    xlabel('nr probek')
    legend('sittobed','sitonchair','lying','ambulating')
    
    
    %% DANE
    
    
    dane1=[sredniafrontalsitonbed',sredniapionowasitonbed',sredniabocznasitonbed',sredniarssisitonbed',varfrontalsitonbed',varpionowasitonbed',varbocznasitonbed',varrssisitonbed',medianfrontalsitonbed',medianpionowasitonbed',medianbocznasitonbed',medianrssisitonbed',kurtosisfrontalsitonbed',kurtosispionowasitonbed',kurtosisbocznasitonbed',kurtosisrssisitonbed',p1',p2',p3',p4',p5',p6',p6',p7',p8',p9',p10',p11',p12',p13',p14',p15',p16',ones(length(sredniafrontalsitonbed),1)];
    dane2=[sredniafrontalsitonchair',sredniapionowasitonchair',sredniabocznasitonchair',sredniarssisitonchair',varfrontalsitonchair',varpionowasitonchair',varbocznasitonchair',varrssisitonchair',medianfrontalsitonchair',medianpionowasitonchair',medianbocznasitonchair',medianrssisitonchair',kurtosisfrontalsitonchair',kurtosispionowasitonchair',kurtosisbocznasitonchair',kurtosisrssisitonchair',d1',d2',d3',d4',d5',d6',d6',d7',d8',d9',d10',d11',d12',d13',d14',d15',d16',2*ones(length(sredniafrontalsitonchair),1)];
    dane3=[sredniafrontallying',sredniapionowalying',sredniabocznalying',sredniarssilying',varfrontallying',varpionowalying',varbocznalying',varrssilying',medianfrontallying',medianpionowalying',medianbocznalying',medianrssilying',kurtosisfrontallying',kurtosispionowalying',kurtosisbocznalying',kurtosisrssilying',t1',t2',t3',t4',t5',t6',t6',t7',t8',t9',t10',t11',t12',t13',t14',t15',t16',3*ones(length(sredniafrontallying),1)];
    dane4=[sredniafrontalambulating',sredniapionowaambulating',sredniabocznaambulating',sredniarssiambulating',varfrontalambulating',varpionowaambulating',varbocznaambulating',varrssiambulating',medianfrontalambulating',medianpionowaambulating',medianbocznaambulating',medianrssiambulating',kurtosisfrontalambulating',kurtosispionowaambulating',kurtosisbocznaambulating',kurtosisrssiambulating',c1',c2',c3',c4',c5',c6',c6',c7',c8',c9',c10',c11',c12',c13',c14',c15',c16',4*ones(length(sredniafrontalambulating),1)];
    
    
    dane=[dane1;dane2;dane3;dane4];
    
    %% BOOTSTRAP
    dataNew1 = [];
for k = 1:size(dane3,1)
    Idx = randi(size(dane1,1));
    dataIdx = dane1(Idx,:);
    dataNew1 = vertcat(dataNew1,dataIdx);
    clear k x xNew
end


dataNew2 = [];
for k = 1:size(dane3,1)
    Idx = randi(size(dane2,1));
    dataIdx = dane2(Idx,:);
    dataNew2 = vertcat(dataNew2,dataIdx);
    clear k x xNew
end

dataNew3 = [];
for k = 1:size(dane3,1)
    Idx = randi(size(dane3,1));
    dataIdx = dane3(Idx,:);
    dataNew3 = vertcat(dataNew3,dataIdx);
    clear k x xNew
end

dataNew4 = [];
for k = 1:size(dane3,1)
    Idx = randi(size(dane4,1));
    dataIdx = dane4(Idx,:);
    dataNew4 = vertcat(dataNew4,dataIdx);
    clear k x xNew
end

dane=[dataNew1;dataNew2;dataNew3;dataNew4];

%% LOSOWANIE
    
    k=12388;
randNum=randperm(k);
randNum=randNum';


X = dane(:,1:end-1);
y = dane(:,end);

k=round(0.7*k);
X_train=X(randNum(1:k),:);
y_train=y(randNum(1:k),:);

X=X(randNum(k:end),:);
y=y(randNum(k:end),:);

%X_train=table(X_train);
%X=table(X);
%y=table(y);
%y_train=table(y_train);
%dane=table(dane);

dane=[X_train,y_train];