% NOT MY CODE, BUT IT'S SOMETHING SIMILAR

x = 0.34414;                           % length of upper/lower plates (m)
k = .0254/(200*20);                    % change in drive screw length (m) per
                                       %   motor step
dphi = 2*pi/(23*3600+56*60+4);         % desired angular velocity (rad/s)
iperiod = 1000*(k/(x*dphi));           % initial stepping interval (ms)
arcsec = pi/(3600*180);                % one arcsec in radian measure

fid = fopen('steps', 'w+');

flag = 0;
period = round(iperiod);
t(1) = period;

for n = 1:65535,
    p(n) = period;

    truephi(n) = dphi*t(n)/1000; 
    actphi(n) = 2*asin(n*k/(2*x));
    err(n) = actphi(n) - truephi(n);

    if (err(n) > 1*arcsec) & (n - flag > 20)
        period = period + 1;
        flag = n;

        fprintf(fid, '\t.word\t%d\n\t.word\t%d\n', n, period);
        n
    elseif (err(n) < -1*arcsec) & (n - flag > 20)
        period = period - 1;
        flag = n;

        fprintf(fid, '\t.word\t%d\n\t.word\t%d\n', n, period);
        n
    end

    t(n+1) = t(n) + period;
end

t = t(1:size(t,2)-1);
fclose(fid);
