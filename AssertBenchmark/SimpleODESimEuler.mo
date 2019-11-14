within AssertBenchmark;

model SimpleODESimEuler
  SimpleODE ode[100];
equation

  annotation(
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-06, Interval = 0.0002),
    __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "euler"));
end SimpleODESimEuler;