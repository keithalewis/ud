# Preliminaries

No need for blah ...

## Algebras

_Outcomes_, $\Omega$, are a set.
An _event_, $E\subset\Omega$, is a subset of possible outcomes.
The set of all possible events, $\mathcal{P}(\Omega)$, is the
set of all subsets of $\Omega$ and is called the _power set_ of $\Omega$.
Another notation is $2^\Omega$, the set of all function from
$2 = \{0,1\}$ to $\Omega$. The function $e\colon 2\to\Omega$
corresponds to the subset $E = \{\omega\in\Omega : e(\omega) = 1\}$.

It clearly satisfies the properties
(i) If $E\in\A$ then $E^c = \Omega\setminus E\in\A$.
(ii) If $E\in\A$ and $F\in\A$ then $E\cap F\in\A$.
(iii) $\emptyset\in\A$ where $\emptyset$ is the set with no elements

Exercise: Find a set that satisfies all but (iii)

Answer: \A = {A\cup E : E\cap A = \emptyset}

An _atom_ is a subset $A\in\A$ such that $B\subseteq A$ and $B\in\A$
imply $B = \emptyset$ or $B = A$.

Execise: Show A is an atom.

Finite cardinality.

## Measurable Functions

$X:\A\to\R$ is a function

## Conditional Expectations

$Y = E[X|\A]$ iff $Y(P|_\A) = (XP)|_\A$.

### Remarks

Note $2^\Omega$ is always a bigger set than $\Omega$.
