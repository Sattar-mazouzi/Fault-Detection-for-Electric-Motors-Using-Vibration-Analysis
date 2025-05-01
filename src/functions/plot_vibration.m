function plot_vibration(vibrations,fault)
    leg1 = "X"; leg2 = "Y"; leg3 = "Z";
    figure ;  
    plot(vibrations.Time, vibrations.X);
    hold on
    plot(vibrations.Time,vibrations.Y);
    hold on
    plot(vibrations.Time,vibrations.Z);
    hold off
    grid on  
    legend(leg1,leg2,leg3);
    xlabel("Time Step"); ylabel("mean Acceleration (m/s^2)");
    title("Vibration in "+ fault + " state");
end

