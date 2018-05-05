# Random Variable

A _random variable_ is a variable, i.e., a symbol that takes the place
of a number and can be manipulated in relations, that has additional
information about the _probability_ it takes on values.

A _discrete random variable_, $X$, is specified by a countable set
of values, $x_j$, and corresponding non-negative probabilities, $p_j$,
with $\sum_j p_j = 1$.
The probability that $X$ takes the value $x_j$ is $p_j$.
We write $P(X = x_j) = p_j$.

A _continuously distributed random variable_, $X$, is specified by a
non-negative _probability density function_, $f$, with $\int_{-\infty}^\infty
f(x)\,dx = 1$. The probability that $X$ is between $a$ and $b$ is $P(a <
X < b) = \int_a^b f(x)\,dx$.

Every _random variable_ is specified by a _cumulative distribution
function_, $F$, that goes from 0 at minus infinity, increases to 1 at
plus infinity, and is right continuous. Discrete and continuous
random variables are a special cases.
We write $P(X \le x) = F(x)$.

Right continuity follows from the fact that if $x_n$ decrease to $x$
then $\cap_n (-\infty, x_n] = (-\infty, x]$ and $F(x) = P(X\in (-\infty,x])$.

If $X$ is discrete, $F(x) = \sum_{x_j\le x}p_j$ and if $X$ is
continuous, $F(x) = \int_{-\infty}^x f(y)\,dy$.

If $\langle \Omega, P, \mathcal{A}\rangle$ is a _probabilty measure_
then any function $X\colon\Omega\to\mathbf{R}$ is a random variable with
$F(x) = P(\{\omega\colon X(\omega)\le x\}) = P(X\le x)$.
