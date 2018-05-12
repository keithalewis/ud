# Derivative Securities

A _derivative security_ is a contract between two _counterparties_ for a
sequence of _exchanges_. An exchange is the transfer of securities between
two legal entities at some point in time.  These can be valued, hedged,
and have a rational basis for making the risks involved understandable
to practitioners.

## Examples

Consider the trivial example of a derivative security that pays, $S_t$,
at time $t$ for some underlying $S$.  The value is $S_0$, the price now.
Buy one unit/share of the underlying then sell it at time $t$ to satisfy
the contract.

In the real world you have to take into account that the price depends on
whether you are buying or selling the underlying &mdash; the bid/ask
spread.

There are even more considerations to take into account: The credit
worthiness of the counterparties will effect the price each must pay or
take for a security.  Also, the bid/ask spread increases the more you
buy.

We will follow the custom mathematicians use (for now) and assume
frictionless markets with perfect liquidity &mdash; no bid/ask spread
for any transaction size.

Another simplification is to assume everthing is cash settled in a
single currency.

### Zero Coupon Bond

A _zero coupon bond_, $D(t)$, pays one unit of currency at maturity, $t$.

### Forward

A _forward_ contract specifies a time, $t$, an underlying, $S$, and
a strike, $k$. It pays $S_t - k$ at time $t$ where $S_t$ is the price
of $S$ at time $t$. This can be hedged by selling $k$ units of a zero
coupon bond and purchasing one unit of the underlying.  The value of
the forward is $S_0 - kD_0(t)$ where $D_0(t)$ is the price at time 0 of
the zero coupon bond. If the value of the contract is $0$ the strike is
called the _forward_, $f = S_0/D_0(t)$.

A company can pay any dividend $c_j$ at any time, $\tau_j$, but the usual
assumption for models is they pay _fixed dividends_, $c_j = d_j$ at known
times $t_j$, or _proportional dividends_, $c_j = p_jS_{t_j}$ at $t_j$.

If zero coupon bonds exist at maturities $t_j$ then the value of a
forward contract on a stock paying fixed dividends is $S_0 + \sum_{0 <
t_j < t} d_jD_0(t_j) - kD(t_N)$.  The hedge is to buy one unit of stock,
sell it at maturity, and buy zero coupon bonds to cover the dividends.

The value of a forward contract on a stock paying proportional dividends
is $S_0(1 + \sum_{0 < t_j < t} p_j) - kD(t_N)$.  The hedge is to
buy one unit plus the sum of proportional dividents of stock, sell it
at maturity, and buy zero coupon bonds to cover the dividends.

## Mathematical Theory

Although these simple examples are straightforward to value, it is preferable
to have a mathematical theory to handle more difficult cases.

### Forward

$X_0 = [s, D]$, $X_1 = [S, 0]$, $C_1 = [0, 1]$,
$\Gamma_0 = [n, m]$, $\Gamma_1 = -\Gamma_0$,
$A_1 = \Delta_1\cdot C_1 - \Gamma_1\cdot X_1
= n S + m = S - k$.

$$
\begin{bmatrix}x\\ D\end{bmatrix}
$$

So $n = 1$ and $m = -k$ and $A_0 = -\Gamma_0\cdot X_0 = $.

Let $I$ be the set of all tradable instruments.

Let the _prices_ of all instruments at time $t$ be denoted $X_t$.
It is a vector in $\mathbf{R}^I$.

$C_t$ be the _cash flows_ associated with holding one unit of the
instrument. 

Forward revisited. 

$X_0 = (D, s)$, $C_0 = (0, 0)$, $X_1 = (0, S)$, $C_1 = (1, 0)$.

$\Gamma_0 = (m, n)$, $\Gamma_1 = -\Gamma_0$ so
$\Delta_0 = 0$, $\Delta_1 = \Gamma_0$.

We want $S - k = A_1 = \Delta_1 \cdot C_1 - \Gamma_1 \cdot X_1
= m + nS$ so $n = 1$ and $m = -k$ hence
$A_0 = \Delta_0 \cdot C_0 -\Gamma_0 \cdot X_0 = -kD + s$.
