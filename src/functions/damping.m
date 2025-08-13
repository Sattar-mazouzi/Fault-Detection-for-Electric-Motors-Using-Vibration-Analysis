function damp = damping(arg)
        % Bearing defect frequency (Hz)
    damp =0.5 + 0.45*sin(2 * pi * arg(2) * arg(1));
end
