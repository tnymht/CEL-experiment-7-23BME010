# CEL-experiment-7-23BME010
Objective: To obtain the linear/polynomial interpolation using Newton/Lagrange’s polynomial. 

## Polynomial Interpolation using Lagrange Method

In this project, I implemented Lagrange interpolation of first, second, and third order using MATLAB. I worked with a given dataset and explored how different interpolation orders affect the accuracy of estimated values. Instead of only applying standard formulas, I experimented with a custom approach by fixing boundary points and dynamically selecting intermediate points. This allowed me to understand both the theoretical and practical aspects of interpolation, including the challenges that arise during implementation.

The problem involved a dataset where the values of x and corresponding f(x) were given, and the task was to estimate intermediate values using interpolation techniques. Polynomial interpolation is based on the concept that for n data points, there exists a unique polynomial of degree (n−1) that passes through all the points . A first-order polynomial connects two points with a straight line, a second-order polynomial forms a parabola through three points, and a third-order polynomial creates a cubic curve through four points.

I implemented the Lagrange interpolation equations for all three orders. For first order, I used two points to form a linear interpolation. For second order, I used three points to construct a quadratic curve. For third order, I extended this approach to four points using the general Lagrange formulation. While writing the code, I looped through the intermediate values and avoided boundary values since they were already known and fixed.

A key aspect of my implementation was the selection of interpolation points. I fixed the first and last data points and then selected the remaining points based on the position of the value being evaluated. For interior points, I used forward selection, while near the boundaries I switched to backward selection. This adaptive approach helped reduce errors caused by poor point selection, although it introduced its own challenges.

During implementation, I encountered issues such as division by zero, which resulted in infinite values, and undefined results leading to NaN. These problems occurred when the same interpolation node was used more than once, causing the denominator in the Lagrange formula to become zero. I resolved these issues by ensuring that all selected interpolation points were distinct and by carefully adjusting the forward and backward selection logic.

The results showed clear differences between interpolation orders. First-order interpolation produced smoother but less accurate values. Second-order interpolation improved the approximation but showed deviations due to the use of non-local points. Third-order interpolation provided more flexibility but also introduced larger variations because it is highly sensitive to point selection. At boundary points, the interpolated values matched exactly with the original values since those points were directly included in the computation.

From this work, I learned that the accuracy of interpolation depends more on the choice of data points than on the order of the polynomial alone. Increasing the order does not always improve accuracy and can sometimes introduce instability. It is essential to ensure that interpolation nodes are distinct and close to the desired value to achieve reliable results.

In conclusion, Lagrange interpolation is an effective method for estimating intermediate values, but its success depends heavily on proper point selection. The custom approach of fixing endpoints and adapting intermediate points is valid but introduces non-local effects that can reduce accuracy. The best results are obtained when interpolation points are chosen as close as possible to the target value.
