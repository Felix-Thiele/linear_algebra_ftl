[read linear_algebra_ftl/D_dual.ftl]

Let K denote a Field.

#Doesnt Work

Theorem. Let V be a vector space over K.
V2ddV(K,V) is injective.
Proof.
  Let x,y < V. Assume x != y. Take a function g 
    such that g is linear over K from V to field2VS(K) and g[x] != g[y] (by Exi).
  V2ddV(K,V)[x][g]  != V2ddV(K,V)[y][g].
End.

Lemma.
Assume V is a vector space over K.
dual(K,V) is a vector space over K.
 
Theorem.
Assume V is a vector space over K.
Let x be an element of |V|.
V2ddV(K,V)[x] is linear over K from dual(K,V) to field2VS(K).
Proof.
  Dom(V2ddV(K,V)[x]) = |dual(K,V)|.
  For all y << |dual(K,V)| y is function from |V| to |field2VS(K)|.
  Proof.
    Let y << |dual(K,V)|.
    Then y << |Hom(K,V,field2VS(K))|.
    Then y is linear over K from V to field2VS(K).
    Then y is a function from |V| to |field2VS(K)|.
  End.
  for every element y of |dual(K,V)| V2ddV(K,V)[x][y] = eval(dual(K,V),x)[y] = y[x] < K.
  dual(K,V) is a vector space over K.
  For all elements h,g of |dual(K,V)| (h +{dual(K,V)} g) < dual(K,V).
  For all elements h,g of |dual(K,V)| V2ddV(K,V)[x][h +{dual(K,V)} g]
      = V2ddV(K,V)[x][h] +{K} V2ddV(K,V)[x][g].
  proof.
    Let h,g be elements of |dual(K,V)|.
    V2ddV(K,V)[x][h +{dual(K,V)} g] = (h +{dual(K,V)} g)[x]
      = h[x] +{K} g[x]
      =V2ddV(K,V)[x][h] +{K} V2ddV(K,V)[x][g].
  end.
  For every element g of |dual(K,V)| and every element a of |K|
    V2ddV(K,V)[x][a @{dual(K,V)} g]
    = a *{K} V2ddV(K,V)[x][g].
  proof.
    Let g be an element of |dual(K,V)|. Let a be an element of |K|.
    V2ddV(K,V)[x][a @{dual(K,V)} g] = (a @{dual(K,V)} g)[x] 
    = a *{K} g[x] = a *{K} V2ddV(K,V)[x][g].
  end.
qed.


Theorem.
Assume V is a vector space over K.
V2ddV(K,V) is from |V| to |dual(K,dual(K,V))|.
proof.
  Dom(V2ddV(K,V)) = |V|.
  Let x be an element of |V|.
  V2ddV(K,V)[x] is linear over K from dual(K,V) to field2VS(K).
end.


Theorem.
Assume V is a vector space over K.
V2ddV(K,V) is linear over K from V to dual(K,dual(K,V)).
Proof.
  V2ddV(K,V) is from |V| to |dual(K,dual(K,V))|.

  dual(K,dual(K,V)) is a vector space over K.
  For all x,y < V V2ddV(K,V)[x +{V} y] = V2ddV(K,V)[x] +{dual(K,dual(K,V))} V2ddV(K,V)[y].
  Proof.
    Let x,y << |V|. 
    V2ddV(K,V)[x] +{dual(K,dual(K,V))} V2ddV(K,V)[y] << |dual(K,dual(K,V))|.
    Therefore V2ddV(K,V)[x] +{dual(K,dual(K,V))} V2ddV(K,V)[y] is a function.
    Dom(V2ddV(K,V)[x +{V} y]) = |dual(K,V)|
      = Dom(V2ddV(K,V)[x] +{dual(K,dual(K,V))} V2ddV(K,V)[y]).
    For every element g of |dual(K,V)| we have V2ddV(K,V)[x +{V} y][g]
      = V2ddV(K,V)[x][g] +{K} V2ddV(K,V)[y][g].
    Therefore the thesis (by FunExt).
  End.
  
  For all a < K and all x < V V2ddV(K,V)[a @{V} x] = a @{dual(K,dual(K,V))} V2ddV(K,V)[x].
  Proof.
    Let a be an element of K and x be an element of |V|.
    V2ddV(K,V)[a @{V} x] and 
      a @{dual(K,dual(K,V))} V2ddV(K,V)[x] are functions.
    Dom(V2ddV(K,V)[a @{V} x]) = |dual(K,V)|
      = Dom(a @{dual(K,dual(K,V))} V2ddV(K,V)[x]).
    For every element g of |dual(K,V)| we have V2ddV(K,V)[a @{V} x][g]
      = a @{dual(K,dual(K,V))} V2ddV(K,V)[x][g].
    Therefore the thesis (by FunExt).
  End.

End.