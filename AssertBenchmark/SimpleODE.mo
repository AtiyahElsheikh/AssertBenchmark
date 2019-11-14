within AssertBenchmark;

model SimpleODE
  Real x(start = 1), y(start = 1), z(start = 1), u(start = 1), v(start = 1);
  parameter Real k = 1.0;
equation
  der(x) = v + k;
  der(y) = x + k;
  der(z) = x + z;
  der(u) = z + k;
  der(v) = u + k;
end SimpleODE;
