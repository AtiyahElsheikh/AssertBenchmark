within AssertBenchmark;

model SimpleODEAssert
  extends SimpleODE; 
  
equation
  assert(k > 0, "wrong");
  assert(k < 2, "wrong 2");
  assert(k > 0 and k < 2, "wrong 4");
  assert((k + 1e-10) * k < 2 * k, "wrong 5");
  assert(k * k > 0, "wrong 3");

end SimpleODEAssert;
