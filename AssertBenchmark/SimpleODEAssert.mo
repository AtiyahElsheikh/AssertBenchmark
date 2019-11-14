within AssertBenchmark;

model SimpleODEAssert
  Real x(start = 1), y(start = 1), z(start = 1), u(start = 1), v(start = 1);
  parameter Real k = 1.0;
equation
  assert(k > 0, "wrong");
  assert(k < 2, "wrong 2");
  assert(k > 0 and k < 2, "wrong 4");
  assert((k + 1e-10) * k < 2 * k, "wrong 5");
  assert(k * k > 0, "wrong 3");
  der(x) = v + k;
  der(y) = x + k;
  der(z) = x + z;
  der(u) = z + k;
  der(v) = u + k;
end SimpleODEAssert;
