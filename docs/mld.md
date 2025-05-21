# MLD

## Version textuelle

```text
café (
  #id                          -- identifiant entier généré automatiquement, PK
  reference                    -- number
  nom                          -- chaine de caractère
  description                  -- chaine de caractère
  prix_kg                      -- number
  disponibile                  -- booléen
  id_origine                   -- entier, FK -> origine.id
)

caractéristique (
  #id                          -- identifiant entier généré automatiquement, PK
  libelle                      -- chaine de caractère
)

origine (
  #id                          -- identifiant entier généré automatiquement, PK
  pays                         -- chaine de caractère
)

café caractéristique (
  #id                          -- identifiant entier généré automatiquement, PK
  id_café                      -- entier, FK -> café.id
  id_carateristique            -- entier, FK -> caracteristique.id
)



```
