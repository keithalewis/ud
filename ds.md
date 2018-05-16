# Derivative Securities

A _derivative security_ is a contract between two _counterparties_ for a
sequence of _exchanges_. An exchange is the transfer of securities between
two legal entities at some point in time.  There is a simple mathematical
theory that can be used to value, hedge, and provide a rational basis
for making the risks involved understandable to practitioners.

## Examples

Consider the trivial example of a derivative security that pays, $S_t$,
at time $t$ for some underlying $S$.  The value is $S_0$, the _price_ now.
Buy one unit/share of the underlying then sell it at time $t$ to satisfy
the contract.

In the real world you have to take into account that the price depends on
whether you are buying or selling the underlying &mdash; the bid/ask
spread.

There are even more considerations to take into account: The credit
worthiness of the counterparties will effect the price each must pay or
take for a security.  Also, the bid/ask spread increases the more you
buy.

We will follow the custom (for now) mathematicians use and assume
frictionless markets with perfect liquidity &mdash; no bid/ask spread
for any transaction size.

Another simplification is to assume everthing is cash settled in a
single currency. These payments are _cash flows_. There are other
cash flows associated with owning instruments. Stocks pay dividends.
Bonds pay coupons. Futures pay ...

### Zero Coupon Bond

A _zero coupon bond_, $D(t)$, pays one unit of currency at maturity, $t$.
The price now is denoted $D_0(t)$. More generally the price at time $s$
is denoted $D_s(t)$. The price at maturity is zero since the instrument
has no cash flows after the unit payment at time $t$.

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
t_j \le t_n} d_jD_0(t_j) - kD(t_n)$.  The hedge is to buy one unit of stock,
sell it at maturity, and collect fixed dividends as zero coupon bonds.

The value of a forward contract on a stock paying proportional dividends
is $S_0(1 + \sum_{0 < t_j \le t_n} p_j) - kD(t_n)$.  The hedge is to buy
one unit plus the sum of proportional dividends of stock, sell one unit
at maturity, and collect proportional dividends as a fraction of the stock.

[Describe the exact trading strategy.]

## Mathematical Theory

Although these simple examples are straightforward to value, it is
preferable to have a mathematical theory to handle more difficult cases.

Let $I$ be the set of all tradable instruments.
The _prices_ of all instruments at time $t$ are denoted $X_t$.
It is a vector in $\mathbb{R}^I$.

The _cash flows_ associated with holding instruments at time $t$ are
denoted $C_t$.  It is also a vector in $\mathbb{R}^I$ but it is usually 0,
or has only a few non-zero entries.

A _trading strategy_ is a sequence of trades $\Gamma_j$ at times
$\tau_0 < \tau_1 < \cdots$. The strategy _closes out_ or is _closed_
if $\sum_j \tau_j = 0$.

The _position_ associated with a trading strategy is
$\Delta_t = \sum_{\tau_j < t} \Gamma_j$. Note that if a trade is done
at time $t$ it is not counted toward the position. This reflects the
fact that it takes some time between trade execution and trade clearing.

We can also write this $\Delta_t = \sum_{s<t} \Gamma_s$ where $\Gamma_s =
\Gamma_j$ when $s = \tau_j$.

The _value_ or _marked to market_ from a trading strategy is $V_t =
(\Gamma_t + \Delta_t)\cdot X_t$. It is the amount you would make from
closing out your positon by selling your existing position and the
current trade.

### Forward

$$
X_0 =\begin{bmatrix}s\\ D\end{bmatrix},
X_1 = \begin{bmatrix}S\\ 0\end{bmatrix}
C_1 = \begin{bmatrix}0\\ 1\end{bmatrix}
$$ 

$$
\Gamma_0 =\begin{bmatrix}n\\ m\end{bmatrix}, \Gamma_1 = -\Gamma_0,
$$ 

$A_1 = \Delta_1\cdot C_1 - \Gamma_1\cdot X_1 = m + nS$
so $n = 1$ and $m = -k$.

$V_0 = \Gamma_0\cdot X_0 = s - kD$.
Forward revisited. 

$X_0 = (D, s)$, $C_0 = (0, 0)$, $X_1 = (0, S)$, $C_1 = (1, 0)$.

$\Gamma_0 = (m, n)$, $\Gamma_1 = -\Gamma_0$ so
$\Delta_0 = 0$, $\Delta_1 = \Gamma_0$.

We want $S - k = A_1 = \Delta_1 \cdot C_1 - \Gamma_1 \cdot X_1
= m + nS$ so $n = 1$ and $m = -k$ hence
$A_0 = \Delta_0 \cdot C_0 -\Gamma_0 \cdot X_0 = -kD + s$.

# Unfiled

$A_n = \Delta_n\cdot C_n - \Gamma_n\cdot X_n$.

$\Delta_{n+1} = \Delta_n + \Gamma_n = 0$.

$A_n = \Delta_n\cdot(C_n + X_n)$.

$A_{n-1} = \Delta_{n-1}\cdot C_{n-1} - \Gamma_{n-1}\cdot X_{n-1}$

$\Delta_n = \Delta_{n-1} + \Gamma_{n-1}$.

$A_{n-1} = \Delta_{n-1}\cdot C_{n-1} - (\Delta_n - \Delta_{n-1})\cdot X_{n-1}$

$0 = \Delta_{n-1}\cdot(C_{n-1} + X_{n-1}) - \Delta_n\cdot X_{n-1}$
