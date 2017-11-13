## Threads Exercise

You and a partner are going to discover the value of pi through the magic of threads!

First, let's discuss the _Monte Carlo_ method of calculation.  In a Monte Carlo experiment, large numbers of random values are repeatedly tried, instead of using a deterministic algorithm.  It is a form of stochastic testing.  The benefit of using these methods is that sometimes trying to use a deterministic algorithm is infeasible, would require too much computation, or we do not know the underlying algorithm.

For example, let's say we wanted to know how large a dartboard's bullseye is compared to the size of the dartboard.  We throw twenty darts at it, aiming at different random parts of the board.  Two end up in the bullseye.  So we determine that 2 / 20, or 10%, of the board is the bullseye.  Note that we are not guaranteed to get this value or anything close to it the next time we do this experiment.  Perhaps next time, all of our darts miss the bullseye, and so we estimate that the size is 0% of the board.  Or by change, every single dart of ours hits the bullseye, and we estimate that the bullseye takes up 100% of the board.

This is one of the downsides of using a Monte Carlo method of calculation - it's not always replicable.  However, with larger numbers, we _should_ get closer and closer to the true value (we will approach the value, if you will).  Let's throw a million darts at the board, and we notice that 30,000 darts land in the bullseye.  Assuming our throws were sufficiently random, we can say with relative confidence that the bullseye takes up 3% of the board (30000 / 1000000).  It is very unlikely - but of course possible! - that it takes up 20% of the board, but only 3% of a million randomly-thrown darts ended up in it.

For this project, let's assume that we do not know the value of _pi_, but we would like to discover it.  Something we can do is think of a unit square (that is, each side is 1 "unit"), and throw a "dart" at some random point on it (with x and y both somewhere between 0.000 and 1.000).  If x^2 + y^2 < 1, then that point is "inside" the circle.  See this illustration: https://en.wikipedia.org/wiki/Monte_Carlo_method#/media/File:Pi_30K.gif

After we have run this simulation many times, we can figure out the ratio between how many points were inside the circle and the total number of points.  This should be multiplied by four (since we were looking at a "quarter" of the circle).  This will allow us to calculate an estimate of pi.

A more detailed description of the math is here: http://mathfaculty.fullerton.edu/mathews/n2003/montecarlopimod.html

Since we're running many calculations which are basically independent of each other, this is an excellent opportunity to use threads!

You will write a program which accepts two long arguments.  The first will indicate how many threads the program should use, and the second how many total iterations.  Note that the number of iterations should remain constant - for example, if I say 10,000 iterations, and have 4 threads, each thread should calculate 2,500 times.

This program will tell the user the total number of iterations, the total number of values "inside" the circle, the ratio of points inside to total number of iterations, and finally calculate the value of pi from that.

Note that you may not see significant differences in time until you work with rather larger numbers.  For example, I used one billion (1,000,000,000) in the examples below.

You should then time how long it takes the program to execute with a differing number of threads.  Try to get it down to the minimum amount of time - this will differ based on different people's computers, especially depending on how many cores or virtual cores your computer's CPU has.

If you are not seeing a reduction in time with more than one thread, even with large values, see the hints.md file in this directory.  You can also ignore that file if you want to figure it all out on your own.

One note: Using Math.random() will result in conflicts between multiple threads as they all try to access the static method.  You should use ThreadLocalRandom to get random numbers - it's built into the Java API.  Docs here: https://docs.oracle.com/javase/7/docs/api/java/util/concurrent/ThreadLocalRandom.html

If you get stuck, check out hints.md for ideas before asking the instructor for help.

### Sample Output

```
[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16894) $ time java Pi 2 100
Total  = 100
Inside = 90
Ratio  = 0.9
Pi     = 3.6

real	0m0.312s
user	0m0.185s
sys	0m0.066s

[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16895) $ time java Pi 4 100
Total  = 100
Inside = 89
Ratio  = 0.89
Pi     = 3.56

real	0m0.166s
user	0m0.182s
sys	0m0.036s

[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16889) $ time java Pi 1 1000000000
Total  = 1000000000
Inside = 785402183
Ratio  = 0.785402183
Pi     = 3.141608732

real	0m5.996s
user	0m5.990s
sys	0m0.051s

[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16893) $ time java Pi 2 1000000000
Total  = 1000000000
Inside = 785418050
Ratio  = 0.78541805
Pi     = 3.1416722

real	0m3.206s
user	0m6.162s
sys	0m0.053s

[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16890) $ time java Pi 4 1000000000
Total  = 1000000000
Inside = 785401494
Ratio  = 0.785401494
Pi     = 3.141605976

real	0m2.780s
user	0m9.980s
sys	0m0.048s

[laboon@Bills-MacBook-Pro-2 ~/pitt/pitt_private]
(16892) $ time java Pi 20 1000000000
Total  = 1000000000
Inside = 785430126
Ratio  = 0.785430126
Pi     = 3.141720504

real	0m3.733s
user	0m13.110s
sys	0m0.075s
```

Please either show this to me in class or email me a link to your work on GitHub in order to receive credit.

```
Grading:
Program works correctly: 1.5
Timing values: 0.5
```