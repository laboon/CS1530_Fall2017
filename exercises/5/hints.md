1. Are you synchronizing properly?

2. Are you joining at the correct point?

3. Are you remembering to split the number of iterations amongst all threads?

4. Should you be using AtomicLong or similar Atomic variables?

5. Remember that synchronizing is computationally expensive.  Are you minimizing the number of synchronizations?

6. Can you reduce shared mutable state?

7. Is there any information which you are re-calculating but it is not actually necessary to do so?



