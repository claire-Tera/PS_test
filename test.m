disp('tttt')
load_system('closed_loop_control')
opts = polyspace.ModelLinkOptions('closed_loop_control');
opts.Prog = 'closed_loop_control';
opts.CodingRulesCodeMetrics.EnableMisraC3 = true;
opts.CodingRulesCodeMetrics.Misra3AgcMode = true;
opts.CodingRulesCodeMetrics.CodeMetrics = true;
opts.ResultsDir = './results_v1_closed_loop_control';
psproj = polyspace.Project;
psproj.Configuration = opts;
p_status = psproj.run('bugFinder')