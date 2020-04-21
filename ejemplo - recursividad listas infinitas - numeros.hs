-- Recursividad
-- Listas infinitas

-- Temática: Números 

factorial 0 = 1
factorial n = n * factorial (n-1)

f1 0 = 0
f1 1 = 1
f1 x | x > 0 = f1 (x - 1) + f1 (x-2) + 1
     | otherwise = f1 (x+1) + f1 (x + 2) 

-- igual a sum
sumatoria [] = 0
sumatoria (x:xs) = x + sumatoria xs

-- igual a length
largo [] = 0
largo (x:xs) = 1 + largo xs

-- igual a ^
potencia a 0 = 1
potencia a b = a * potencia a (b - 1)

takeHasta nro [] = []
takeHasta tope (x:xs)
 | x > tope = []
 | otherwise = x : takeHasta tope xs

-- igual a take
takeCant nro [] = []
takeCant 0 _ = []
takeCant nro (x:xs) = x : takeCant (nro - 1) xs


funcionLoca x = x : funcionLoca (x-1)
--funcionLoca x = x : funcionLoca (x*2)
--funcionLoca x = x : funcionLoca x


-- Otros ejemplos 
---  
funcion1 a b = a + b - 4
funcion2 b = funcion1 6 b
funcion3 a b c = funcion1 a (funcion2 b) + c

-- funcion3 1 2 3 = funcion1 1 (funcion2 2) + 3-- 
--                  (funcion1 1 (funcion2 2)) + 3
-- 				 (1 + (funcion2 2) - 4) + 3
-- 				 (1 + (funcion1 6 2) - 4) + 3
-- 				 (1 + (6 + 2 - 4) - 4) + 3
-- 				 (1 + (8 - 4) - 4) + 3
-- 				 (1 + 4 - 4) + 3
-- 				 (5 - 4) + 3
-- 				 1 + 3
-- 				 4

replicar n = n:(replicar n)

secuenciar n = n:secuenciar (n +1)

potencias n = n:potencias (n * 2)

potencias' nro = map (\n-> nro^n) [1..]

data Persona = UnaPersona {apellido::String, habilidades:: [Int]} deriving Show

entrenar alguien = alguien{habilidades = 10000:habilidades alguien} 

fuerza = head.habilidades

chuck = UnaPersona "Norris" [1..]

