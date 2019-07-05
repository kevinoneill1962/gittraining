%% Lines
lData = plot(x,y, 'ro-')

set(lData, 'Color', 'r');
set(lData, 'LineWidth', 2.75);

%% Patches

xx = [1:10 , 10:-1:1];

yy = [[yData+yErr], fliplr([yData-yErr])];

pData = patch(xx, yy, 1);

set(pData, 'FaceColor', 'b');
set(pData, 'EdgeColor', 'b');
set(pData, 'FaceAlpha', 0.25);

%% Plot Format

title(sprintf('Electrode: %d', electrodes(k)), 'FontSize', 15)

ylabel('Firing Rate, Hz', 'FontSize', 15)
xlabel('Time, sec', 'FontSize', 15)

set(gcf, 'Units', 'Inches')
set(gcf, 'Position',[2 2 6 3])
% set(gcf, 'PaperUnits', 'FontSize', 'PaperPosition',[2 2 6 3])

aPos = get(gca, 'Position');

xlim([0, 3])
ylim([0, 40])

p1 = get(gca, 'position');
legend({'Hello', 'World'}, 'Location', [0.79, 0.8, 0.125, 0.0625])
legend({'Hello', 'World'}, 'Location', 'NorthEast')
legend boxoff

set(gca, 'yTick', [0, 10, 20, 30, 40])
set(gca, 'yTickLabel', [0, 10, 20, 30, 40])
set(gca, 'xTick', [0, 1, 2, 3])
set(gca, 'xTickLabel', [0, 1, 2, 3])

grid on
set(gca,'XGrid','off','YGrid','on','ZGrid','off')

set(gca,'FontSize',15)

h_xlabel = get(gca,'xLabel');
set(h_xlabel,'FontSize',15);

h_ylabel = get(gca,'yLabel');
set(h_xlabel,'FontSize',15);

print('-dpng', ['C:\CodeRepo\Lab\PNS\P201301\Figures2\PSTH_V2_', num2str(k), '.png'], '-r100');
saveas(gcf,['C:\CodeRepo\Lab\PNS\P201301\Figures2\PSTH_V2_', num2str(k), '.png']);



