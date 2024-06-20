#line(length: 500pt)
#align(center)[
  = DÉTECTION D'INFORMATION CACHÉES
]
\
#grid(
  columns: (1fr, 1fr),
  align(center)[
    _par AYOUBA Anrezki \ MP2I_
  ],
  align(center)[
    _Lycée Clémenceau Nantes 44 \ TIPE : 2024 - 2025 _
  ]
)

#set heading(numbering: "1.1.1")

#line(length: 500pt)

= Table des matières

== Introduction
  === Problématique
  === Lien avec le thème
  === Motivation

== Approches
  === Analyse statistique
  === Analyse de la fréquence
  === Apprentissage automatique 

== Approche envisagée (Analyse statistique)
  === Traitement d'image
  === Algorithmes
  === Résultats

== La suite
  === Amélioration de l'approche
  === Contacts
  === Autres sujets
  bbbbbbbbbbbbbbbbbbbbbbbbbbbb\
  h\\\\\\\\
  ====
  =
  =
  =
  =


\

Étape 1 :  $A =  mat(
  B_(1,1),...,B_(1,n);
  dots.v, ..., dots.v;
  B_(m,1), ..., B_(m,n);)$
  où pour tout $(i,j) in [|1, m|]×[|1, n|] space B_(i,j) = mat("pixel"_(1,1), ..., "pixel"_(1,p);
  dots.v, ..., dots.v;
  "pixel"_(v,1), ..., "pixel"_(v,p)
  )$
\ \ 
Étape 2  : $"Moyennes" =  {sum_(i=1)^v sum_(j=1)^p B_(a,b)_(i,j) | (a,b) in [|1, m|]×[|1, n|]}$
\ \
Étape 3 : Soit $"seuil = s"$
\ \
Étape 4 : ```
        moyennes <- liste de Moyennes  
        Pour i allant de 1 à n×m:
          Pour j allant de i à n×m:
            si |moyennes[i] - moyennes[j]| > s:
              renvoyer non homogène
              FIN algorithme
            fin si
          fin pour j
        fin pour i
        renvoyer homogène
        FIN algorithme
          
      ```

\ \
$"donnée" = mat("pixel"_(1,1), ..., "pixel"_(1,p);
  dots.v, ..., dots.v;
  "pixel"_(n,1), ..., "pixel"_(n,p)
  )
$ où pour tout $(i,j) in [|1, n|]×[|1, p|] space "pixel"_(i,j) = (R, G, B)$ \ \ où $R, G$ et $B$ sont de la forme $(b_1 space b_2 space b_3 space b_4 space b_5 space b_6 space b_7 space b_8) in [|0, 1|]^8$ \ \
On pose pour $G in (R, G, B) space G_(f o) = (b_1 space b_2 space b_3 space b_4 ) "et" G_(f a) = (space b_5 space b_6 space b_7 space b_8)$
\ \
$"hote" =  mat("pixel"_(1,1), ..., "pixel"_(1,p);
  dots.v, ..., dots.v;
  "pixel"_(n,1), ..., "pixel"_(n,p)
  )$ et $"stego" = mat("pixel"_(1,1), ..., "pixel"_(1,p);
  dots.v, ..., dots.v;
  "pixel"_(n,1), ..., "pixel"_(n,p)
  ) $
\ \
Soit $G^" stego" in (R,G,B)_"stego"$, $G^"donnée" in (R,G,B)_"donnée"$, $G^"hote" in (R,G,B)_"hote"$

$ cases(G^" stego"_(f o) =  G^"hote"_(f o), G^" stego"_(f a)= G^"donnée"_(f o))$

\ \


Modèle