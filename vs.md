# Vectors

Some people think _vectors_ are just a list of numbers:
$x = (x_1, \ldots, x_n) = (x_i)_{i=1}^n$, where $x_j$
are _real numbers_, denoted $\mathbb{R}$. The set of
all $n$-dimensionl vectors is denoted $\mathbb{R}^n$.

You can multiply a vector by a number $a(x_i) = (ax_i)$.
You can add two vectors: $(x_i) + (y_i) = (x_i + y_i)$.
The scalar multiplication and vector addition satisfy the distributive law:
$a(x + y) = ax + ay$.

If that is all you think they are you are missing out.  Mathematical
objects are defined by the rules they satisfy.  Computer scientists have
been catching on to [this](http://www.stepanovpapers.com/DeSt98.pdf). The
objects and functions from one object to another that preserve the
operations defined on objects are what we in the business call a
[_category_](...).

For example $A^B$, where $A$ and $B$ are sets, is the set of all
functions from $B$ to $A$. If you think of $n$ as the set
$\{1,\ldots,n\}$ then one way to define $x\colon n \to \mathbb{R}$
is to list the range of $x$: $(x_1,\ldots,x_n)$,
or $j\mapto x_j$ for $j = 1,\ldots,n$.

The set $A^B$ is a vector space. (A is a R module)

A _vector space_ is a set, $V$, having a scalar multiplication
$\mathbb{R}\times V\to V$, $(a,v)\mapsto av$, and addition
$V\times V\to V$, $(v,w)\mapsto v + w$. The addition is commutative,
$v + w = w + v$, with additive identity denoted by $0$.
The multiplication and addition satisfy the distributive law
$a(v + w) = av + aw$.

Note, for example, that functions are vectors.  Also, (homogeneous)
solutions to linear differential equations are vectors.

A subset $W\subseteq V$ is a _subspace_ if it is closed under
scalar multiplication and vector addition:
$aW = \{aw\colon w\in W\}\subseteq W$ and
$W + W = \{w + w'\colon w,w'\in W\}\subseteq W$.
In particular $V$ is a subspace of $V$ and so is $\{0\}$.

The _span_ of a set $S\subseteq V$ is the smallest subspace
containing $S$ and is denoted $\text{span}\,S$.

Exercise. Show the span of $S$ is the intersection of
all subspaces containing $S$.

Exercise. Show $\text{span}\,\{v_i\}
= \{\sum_i a_iv_i\colon a_i\in\mathbb{R}\}$.

The vectors $\{v_i\}$ are _linearly independent_ 
if $\sum_i a_i v_i = 0$ implies $a_i = 0$ for all $i$.

The _dimension_ of a vector space is $\text{dim}\,V
=\max\{n\colon v_1,\ldots,v_n\mathrm{\ are\ independent}\}$

The vectors $\{v_i\}$ are a _basis_ for $V$ if they are
independent and span $V$.


The _real numbers_, $\mathbb{R}$, are a _field_.


Hamming: purpose of computing is insight, not numbers.

Me: purpose of math is not proofs but understanding relationships.

## Coordinate Free

$W\subset V$, $V/W = ...$.

$T\colon V\to W$

$T\colon V\to V/\ker T\to \ran T\to W$.

Don't need Steinitz Lemma.

Computer proof of Pons Assinorum.
