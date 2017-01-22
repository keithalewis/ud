# Unified Derivatives
## Keith A. Lewis

This note describes a uniform approach to valuing, hedging, and determining
the risk of derivative securities. A _derivative security_ is a contract
between a buyer and a seller for an exchange of cash flows over time.
There is a general theory for how to replicate contracts using a dynamic
hedging strategies involving market instruments given a model of their
price and cash flow dynamics. I assume a single currency and perfect
liquidity. 

Every model is determined by a
vector-valued martingale $(M_t)$ and positive scalar process $(D_t)$.

Let $T$ be the set of possible _trading times_. The only assumption needed is that
this set is totally ordered. 

Let $I$ be the collection of all _instruments_
that are traded in the market. 

Let $\Omega$ be the set of all possible _outcomes_.

Let $(\mathcal{A}_t)_{t\in T}$ be an increasing sequence of
algebras on $\Omega$. 

If an algebra $\mathcal{A}$ is finite then its
atoms form a partition of $\Omega$. A function $X\colon\Omega\to\mathbf{R}$
is $\mathcal{A}$ measurable if and only if it is constant on atoms, hence
$X\colon\mathcal{A}\to\mathbf{R}$ is a function on the atoms of $\mathcal{A}$.

## Future Work

Determine how good a hedge is.