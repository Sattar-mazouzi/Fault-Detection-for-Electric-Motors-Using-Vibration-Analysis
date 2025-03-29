function stiffness = bearing_stiffness(arg)
        % Bearing defect frequency (Hz)
    stiffness = 1e-2 + 1e-3 * sin(2 * pi * arg(2) * arg(1));
end

