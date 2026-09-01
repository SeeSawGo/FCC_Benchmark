# FCC_Benchmark

SixDEM is an in-house code and was originally designed to simulate the thermo-mechanical performance of granular beds and study packing patterns of binary or polydisperse pebble beds. 

One can find references regarding the code:
  1. Suo, S., et al. (2021). "Cyclic thermo-mechanical performance of granular beds: Effect of elastoplasticity." Powder Technology.
  2. Suo, S., et al. (2023). "An unexplored regime of binary packing under extreme mixture conditions." Powder Technology 428: 118802.


This hub is a benchmark case for ON DEM: simulate triaxial compression of an FCC packing, identify the failure, and validate the results against Thorton (1979).
The boundaries are realized using flexible wall boundaries, and the loading is controlled by adding wall pressure instead of displacement. After every loading step, the system reaches the steady state which is tested by tolerance checks of kinetic energy and unbalanced particle force. By adjusting input parameters in "input.json", one can conduct more simulations. In the "Result" folder, there are results with different friction coefficients. The attached MATLAB code can help visualize the results.

Contact Dr. Si Suo by si.suo@sydney.edu.au for issues.

