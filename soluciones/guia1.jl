### A Pluto.jl notebook ###
# v0.12.20

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 926a2a80-7221-11eb-14f2-230a25388454
using Plots, PlutoUI

# ╔═╡ 2bf77738-721e-11eb-0799-c9dd87b9b360
md"# Guia 1 
## Julia_version"

# ╔═╡ f4873bf2-72c8-11eb-204a-13dd108f1de1
#varinfo(PlutoUI)

# ╔═╡ 9a9eab3e-721e-11eb-3a5e-c919f80e05b1
md"	
	Problema 1: Evaluar (en papel y lápiz) las siguientes expresiones, anticipando el resultado de estas operaciones en Julia. Verifique programando las mismas.

		a) 5 / 2 + 20/ 6

		b) 4 * 6 / 2 - 15 / 2
	
		c) 5 * 15 / 2 / (4 - 2)
	
		d) 1 + 1/4
	
		e) 1. + 1/4
		
		f) 1 + 1./4
		
		g) 1. + 1./4. 
"

# ╔═╡ 4ac8ac62-721f-11eb-1a18-a5c6448694fd
md"
	a)
"

# ╔═╡ 37ebac52-721f-11eb-1e13-cf4091071a7c
5 / 2 + 20/ 6

# ╔═╡ 3df2aeca-721f-11eb-38b8-85fdd9c90312
5 // 2 + 20// 6

# ╔═╡ 49588208-721f-11eb-0074-c504da48fa91
md"
	b)
"

# ╔═╡ 6de8f21a-721f-11eb-0cbe-a7ec36a2fc30
4 * 6 / 2 - 15 / 2

# ╔═╡ 7aaa13ee-721f-11eb-3fb4-257d3291bf0b
4 * 6 // 2 - 15 // 2

# ╔═╡ 83726c60-721f-11eb-18f9-b5d5e50ec2d3
md"
	c)
"

# ╔═╡ 8d138fa6-721f-11eb-2433-a7100955a1d8
5 * 15 / 2 / (4 - 2)

# ╔═╡ 9daeba52-721f-11eb-124a-c1457d629e04
md"
	d)
"

# ╔═╡ a9e6b804-721f-11eb-2ed5-67bb4ebd22f0
1 + 1/4

# ╔═╡ b5c87738-721f-11eb-3517-63bd87d02b4a
md"
## Problema 2
	
	Evaluar (en papel y lápiz) las siguientes operaciones usando matemática exacta y 	 matemática
	de enteros de 2 bytes (Integer(2)). Verique sus resultados escribiendo un código
		a) 32767 + 1

		b) 30000*2

		c) -30000 - 10000
"

# ╔═╡ 13e46c8a-7220-11eb-2ba5-0902b34fb67c
md"
	a)
"

# ╔═╡ 24940f0e-7220-11eb-3233-3d1de03ccf9a
32767 + 1

# ╔═╡ 34debbac-7220-11eb-322c-d73db2f1d93b
Int8(32767 + 1)

# ╔═╡ 72062a2e-7220-11eb-3a81-59b7e58faa21
Int8(30000*2)

# ╔═╡ 860413ec-7220-11eb-02e8-f323c33df74d
Int8(-30000 - 10000)

# ╔═╡ 93ad71be-7220-11eb-28e1-33fd1e408257
md" 
## Problema 3
	Escriba un programa que pida dos números reales e imprima en la pantalla el mayor
	de ellos. El programa debe indicar si los números son iguales.
"

# ╔═╡ c29b1a80-7220-11eb-3dc5-c14c6d6ff5b6
begin
	function mymax(x,y)
		if x > y return x
		else return y
		end
	end
end

# ╔═╡ 1cfa8a4c-7221-11eb-135f-0fded35bc35f
mymax(4, 5)

# ╔═╡ ef39767e-7223-11eb-3125-9def02927482
md"
## Problema 4
	Escriba un programa que pida un número entero y determine si es múltiplo de 2 y 		de 5.
"

# ╔═╡ 26b1c3c4-7224-11eb-149f-8747484e053f
md"
## Problema 5
	Escriba una programa que ingrese los coecientes A, B y C de un polinomio real de 	  segundo
	grado (Ax2+Bx+C), calcule e imprima en pantalla las dos races del polinomio en 	 formato complejo a+ib,
	sin utilizar algebra compleja.
"

# ╔═╡ 419ef40c-7224-11eb-1d52-03a99c750de1
md"
## Problema 6
	Escriba un programa que permita convertir numeros naturales con base 10 a la base 	   b <= 16.
    El programa debe pedir como entrada b y el numero natural a convertir (que debe       estar en base 10).

"

# ╔═╡ 4b4e4444-7224-11eb-11df-39f6d3540bd4
md"""
## Problema 7.

Escriba un programa para calcular un valor aproximado de π utilizando
a) la fórmula recurrente de Arquímedes, que acota $\pi$ entre $P_n$ y $p_n$, 
con $p_n < π < P_n$. 
Siendo $p_n$ y $P_n$ los perámetros de los polígonos regulares de $n$ 				lados inscriptos y circunscriptos, respectivamente, en la circunsferencia de radio $1/2$. 

La fórmula de recurrencia que encontró Arquímides es la siguiente:

$P_{2n} = \frac{2p_nP_n}{p_n + P_n} \;\;\;\;\; p_{2n} = \sqrt{P_{2n}p_n}$

Usando los valores $P_6 = 2\sqrt{3}$ y $p_6 = 3$, correspondientes al 				hexágono, escriba un programa que realice
20 iteraciones, con $n = 6 \cdot 2^k$, y $k = 1 \ldots 20$, 
y escriba los resultados en pantalla.


b) la productoria de Wallis
$\frac{\pi}{2} = \prod_1^{\infty} \frac{(2n)^2}{(2n)^2 - 1} = \frac{3}{4}\frac{16}{15}\frac{36}{35}\frac{64}{63} \cdots$

Calcule el valor de π truncando la productoria a $10^6$ factores.

"""

# ╔═╡ 3b521068-72b8-11eb-1cb5-5b87525bc69e
md"## Respuesta:
Primero creamos dos funciones, una usará el punto flotante estandard (de 64 bits), la otra usará un punto flotante mucho mayor.

	Parte a)
"

# ╔═╡ 63f03794-72b5-11eb-10a9-016806d3d36e
begin
	function Arqui(k)
		P = 2sqrt(3)
		p = 3
		for i ∈ 1:6*2^k
			P = 2p*P/(p+P)
			p = sqrt(P*p)
		end
		#Pi = zeros(2)
		#Pi[1] = P
		#Pi[2] = P-p
		return [P; p]
	end

end

# ╔═╡ f8f556f2-72b8-11eb-07d8-157915079977
md"
Vemos que los tipos del resultado son distintos"

# ╔═╡ 84bdf336-72b6-11eb-0f83-f136ab46b90f
typeof(Arqui(6))

# ╔═╡ 0cdfafbe-72b9-11eb-0da5-cb5f636a1fa5
md" Este es el valor de π que tiene Julia (no se con que precisión está)."

# ╔═╡ 374d60cc-72b7-11eb-2b2b-43106b84b8c9
π

# ╔═╡ 47d298e8-72b7-11eb-390e-8569e1ecc8ae
my_py_20 = Arqui(20)

# ╔═╡ c8bfc63e-72b8-11eb-1dad-f54ec625d936
my_py_20[1] - π

# ╔═╡ 3a247d56-72b9-11eb-0c95-5716231a0539
md"Ahora podemos ver el segundo valor de la funcíon que nos informa cuán cerca están entre si las dos series."

# ╔═╡ d5683a24-72b8-11eb-37c8-a7d639fd6616
my_py_20[2]

# ╔═╡ 34a8db18-72b6-11eb-0fab-c7fa91711c95
begin
	N = 6
	xk = 1:N
	A = Arqui.(xk);
	yP = zeros(N) 
	yD = zeros(N)
	for i ∈ xk
		yP[i] = A[i][1] - π
		yD[i] = A[i][1] - A[i][2]
	end
	scatter(xk,yP,alpha=0.5)
	scatter!(xk,yD,alpha=0.5)
end

# ╔═╡ d50e894e-72c1-11eb-25c1-3378210ef175
function ArquiBig(k)
		P = BigFloat(2sqrt(3))
		p = BigFloat(3)
		for i ∈ 1:6*2^k
			P = 2p*P/(p+P)
			p = sqrt(P*p)
		end
		Pi = zeros(BigFloat,2)
		Pi[1] = P
		Pi[2] = p
		return Pi
end

# ╔═╡ 85bac096-72b8-11eb-29bc-ef0a6494cc75
typeof(ArquiBig(6))

# ╔═╡ a385b3e8-72c8-11eb-0b0b-f7026de684af
Arqui(20)[2]
#@time Arqui(20)[1]

# ╔═╡ 07a94502-72cb-11eb-0214-1d3272af1730
@time ArquiBig(20)[1]

# ╔═╡ 7692b8d4-72c3-11eb-39cd-61fe3705c75e
begin
	NB = 13
	xkB = 1:NB
	AB = ArquiBig.(xkB);
	yPB = zeros(BigFloat,NB) 
	yDB = zeros(BigFloat,NB)
	for i ∈ 1:NB
		yPB[i] = AB[i][1] - π
		yDB[i] = AB[i][1] - AB[i][2]
	end
	#scatter(xkB,yPB,alpha=0.5)
	scatter(xkB,log.(yDB),alpha=0.5)
end

# ╔═╡ 8590628c-72cd-11eb-3605-c5de42039a78
md"
	Parte b)
"

# ╔═╡ 934bbd0e-72cd-11eb-1dd0-db87d4840b96
function Pi_WR(N)
	P=4//3
	for n ∈ 2:N
		P = P * (2n)^2//((2n)^2 - 1)
	end
	return 2*P
end

# ╔═╡ e51d829a-72d0-11eb-295f-ef8418ace68f
Pi_WR(15)

# ╔═╡ 91ed81b6-72cf-11eb-12d7-67f59ff7edc5
Float64(Pi_WR(15))

# ╔═╡ 17b75f46-72d1-11eb-1188-592c55914fac
md" Con aritmética entera no se puede ir mucho más adelante con esta fórmula pues nos salimos de los **Int64**, por ejemplo si evaluamos para $N=20$ nos dará un error.

Con punto flotante no tenemos problema.
"

# ╔═╡ 44caae9e-72d0-11eb-036d-b7cf58ba2a20
function Pi_WF(N)
	P=4/3
	for n ∈ 2:N
		P = P * (2n)^2/((2n)^2 - 1)
	end
	return 2*P
end

# ╔═╡ 57bfda54-72d0-11eb-0fa9-519e5c51652d
Pi_WF(10^6)

# ╔═╡ 4e0aab82-7224-11eb-1d76-0502b4fbfffa
md"""
## Problema 8.

Dado el arreglo $A$, declarado de la siguiente manera
**real (kind(1.0)), dimension(50,20) :: a**
escriba (papel y lápiz) secciones de este arreglo representando:
	
	a. la primera fila de A;
	
	b. la última columna de A;
	
	c. un elemento de por medio en cada fila y columna.
"""

# ╔═╡ 507b289a-7224-11eb-2a96-d9ff084c0434
md"
## Problema 9.

Escriba un programa, que utilizando una subrutina, multiplique un vector de N elementos,
por una matriz de $N \times N$. 
El programa debe preguntar el valor de N y luego definir los arreglos, y darle
valores iniciales tal que, la matriz sea triangular superior, con todos sus elementos igual a 1, excepto los de
la diagonal que toman valor 3, el vector tendra todos sus elementos pares igual a 2, y los impares igual a 3.
No utilice **DO** para las inicializar el vector, ni **DO** anidados para inicializar la matriz.
"

# ╔═╡ 521872b6-7224-11eb-0fe2-e3893e2cb162
md"
## Problema 10.

Escriba un programa para calcular la posición y la velocidad en función del tiempo, para un problema de tiro oblicuo. Debe preguntar el ángulo (en grados) y la velocidad inicial (en m/seg.), asumiendo que el proyectil parte del origen. 
Elija el incremento temporal (Δt) de manera que la gráfica
tenga 600 puntos y abarque el intervalo entre el disparo y el instante en que el proyectil vuelve a tener
altura 0. 
Utilice funciones para calcular la posición y la velocidad. 
**Escriba la salida del programa en un
archivo de texto, con 5 columnas (t, x(t), y(t),vx(t),vy(t)). La primera línea debe comenzar con #, e incluir
la descripción de los datos de cada columna. Los datos en la tabla deben tener 6 cifras significativas y estar
escritos en notación exponencial.** Grafique x(t), y(t) y vy(t) en función de t, y la trayectoria del proyectil, **utilizando gnuplot**.


"

# ╔═╡ 66bd3d20-722e-11eb-1cfd-53db8195678c
md"
## Problema 11.

Se pretende calcular las sumas $S_N = \sum^N_{k=1} a_k$, donde $N$ es un número natural. 
Llamemos
$S'_N$ al valor calculado que se logra de hacer $(float)(S_{N-1} + a_N)$. 
Sea $S_N =\sum^N_{k=1} \frac{1}{k}$. Mostrar que $S'_N$ se
estaciona a partir de algún $N$ suficientemente grande. 
Deducir que a partir de entonces $S_N \neq S'_{N}$ . Hacer
un programa que determine el valor a partir del cual $S'_N$ se estaciona.
"

# ╔═╡ 69ce4350-722f-11eb-3602-c1fb3b5f298b
md"
## Problema 12.
Para calcular un valor aproximado de π utilizaremos la siguiente serie infinita alternante:

$\frac{\pi}{4} = \sum_{n=0}^{\infty} \frac{(-1)^n}{2n+1}$

Recordemos que una cota superior para el error cometido al truncar una serie alternante (de valor absoluto
decreciente) está dado por el valor absoluto del primer término despreciado. Escriba un programa que ingrese
el número de cifras decimales exactas con que se desea el valor de π (entre 1 y 5 cifras) y devuelva en pantalla
el número de términos que deben incluirse en la serie de arriba para obtener dicha precisión y a renglón siguiente
el valor de π obtenido de esta forma, truncado el resultado al número de cifras pedido.
"


# ╔═╡ 63e0cef4-722f-11eb-37a3-754f9c96ff0e
md"
## Problema 13.

Escribir un programa que pida una contrase~na de tres dígitos y permita leer tres intentos.
Si el usuario da la contraseña correcta responde responde *Correcto* y queda inactivo, con este mensaje.
En caso contrario el programa escribe *Lo siento, contraseña equivocada* y se cierra de inmediato.
"


# ╔═╡ 2359c63c-72da-11eb-00cf-fbe4963d8a2a
md" **No está completo, estoy viendo cual es la mejor opción**
A Pluto no le gusta la interacción vía Terminal, de hecho la ha sacado..."

# ╔═╡ 57995f8a-72e3-11eb-3b35-3dcab2011521
status = ["Constraseña correcta", "Trate nuevamente", "Demasiados Intentos"]

# ╔═╡ 970a8a0c-72d1-11eb-176d-99aa155c42ba


# ╔═╡ 3ab32708-72db-11eb-0388-27fedceedd5e
@bind go Button()

# ╔═╡ acf784c8-72db-11eb-1cee-439fd487016f
begin
	function my_access_P!(counter,status,contraseña)
		if counter <= 3
			if contraseña == "123"
				return status[1]
			else 
				counter = counter + 1
				return status[2]
			end
		else
		return status[3]
		end
	end
end

# ╔═╡ 7474bed2-7302-11eb-232b-f34dc1d86bef
	@bind contraseña TextField()

# ╔═╡ 10a31f0a-72dc-11eb-1cb6-61246da6084e
begin
	i = 1
	my_access_P!(i,status,contraseña)
end

# ╔═╡ f2dba3a2-72d6-11eb-307c-9b9e1067975a
function Input(prompt)
    println(prompt)
    readline()
end

# ╔═╡ 67830ede-72d2-11eb-2ba9-c36cb0fb0f8b
function my_access()
	for counter ∈ 1:3
		println("Entre su contraseña: ")
		if contraseña == 123 
			return "Constraseña correcta"
		else 
			println("trate nuevamente")
		end
		println("Demasiados Intentos")
		return
	end
end
		

# ╔═╡ 0325f6ea-72d7-11eb-16b6-b5a5570a3a42
pepe = Input("entre ")

# ╔═╡ 3d1640b4-72d3-11eb-1a1e-11018fdd4602
counter = 1

# ╔═╡ 53b82aa8-72d3-11eb-2254-fd9c3e5e87ce
my_access()

# ╔═╡ 7290616c-722f-11eb-2f6b-a35d5a656bf4
md"
## Problema 14.
Escribir un programa que, dado un año y el nombre de un mes, saque por pantalla el número
de días del mes (tenga en cuenta que algunos años son bisiestos).
"

# ╔═╡ 744a9c22-722f-11eb-1931-67f2b3c32429
md"
## Problema 15.

Escriba un programa que genere secuencialmente 10 archivos con nombre de salida diferentes
(dependiendo del valor que tome algún parámetro). En cada archivo, escriba bajo la forma de dupla $(x; f(x))$
una función evaluada en N puntos y que también dependa del parámetro (por ejemplo 
$y = sin(πωx)$, con $ω = 1, 2, 3, \ldots$). El loop debe cerrar cada archivo luego de escribir en él. En el mismo programa o en otro,
construya otro loop que abra secuencialmente los archivos y que (sin borrar los datos escritos) agregue otros
N puntos de la función $(x; f(x))$.
"

# ╔═╡ 87b43c1a-72db-11eb-1b82-7bdbde366406
md"**Entre su contraseña:** y luego aprete el boton"

# ╔═╡ Cell order:
# ╠═2bf77738-721e-11eb-0799-c9dd87b9b360
# ╠═926a2a80-7221-11eb-14f2-230a25388454
# ╠═f4873bf2-72c8-11eb-204a-13dd108f1de1
# ╟─9a9eab3e-721e-11eb-3a5e-c919f80e05b1
# ╟─4ac8ac62-721f-11eb-1a18-a5c6448694fd
# ╠═37ebac52-721f-11eb-1e13-cf4091071a7c
# ╠═3df2aeca-721f-11eb-38b8-85fdd9c90312
# ╟─49588208-721f-11eb-0074-c504da48fa91
# ╠═6de8f21a-721f-11eb-0cbe-a7ec36a2fc30
# ╠═7aaa13ee-721f-11eb-3fb4-257d3291bf0b
# ╟─83726c60-721f-11eb-18f9-b5d5e50ec2d3
# ╠═8d138fa6-721f-11eb-2433-a7100955a1d8
# ╟─9daeba52-721f-11eb-124a-c1457d629e04
# ╠═a9e6b804-721f-11eb-2ed5-67bb4ebd22f0
# ╟─b5c87738-721f-11eb-3517-63bd87d02b4a
# ╟─13e46c8a-7220-11eb-2ba5-0902b34fb67c
# ╠═24940f0e-7220-11eb-3233-3d1de03ccf9a
# ╠═34debbac-7220-11eb-322c-d73db2f1d93b
# ╠═72062a2e-7220-11eb-3a81-59b7e58faa21
# ╠═860413ec-7220-11eb-02e8-f323c33df74d
# ╟─93ad71be-7220-11eb-28e1-33fd1e408257
# ╠═c29b1a80-7220-11eb-3dc5-c14c6d6ff5b6
# ╠═1cfa8a4c-7221-11eb-135f-0fded35bc35f
# ╟─ef39767e-7223-11eb-3125-9def02927482
# ╟─26b1c3c4-7224-11eb-149f-8747484e053f
# ╟─419ef40c-7224-11eb-1d52-03a99c750de1
# ╟─4b4e4444-7224-11eb-11df-39f6d3540bd4
# ╠═3b521068-72b8-11eb-1cb5-5b87525bc69e
# ╠═63f03794-72b5-11eb-10a9-016806d3d36e
# ╟─f8f556f2-72b8-11eb-07d8-157915079977
# ╠═84bdf336-72b6-11eb-0f83-f136ab46b90f
# ╟─0cdfafbe-72b9-11eb-0da5-cb5f636a1fa5
# ╠═374d60cc-72b7-11eb-2b2b-43106b84b8c9
# ╠═47d298e8-72b7-11eb-390e-8569e1ecc8ae
# ╠═c8bfc63e-72b8-11eb-1dad-f54ec625d936
# ╟─3a247d56-72b9-11eb-0c95-5716231a0539
# ╠═d5683a24-72b8-11eb-37c8-a7d639fd6616
# ╠═34a8db18-72b6-11eb-0fab-c7fa91711c95
# ╠═d50e894e-72c1-11eb-25c1-3378210ef175
# ╠═85bac096-72b8-11eb-29bc-ef0a6494cc75
# ╠═a385b3e8-72c8-11eb-0b0b-f7026de684af
# ╠═07a94502-72cb-11eb-0214-1d3272af1730
# ╠═7692b8d4-72c3-11eb-39cd-61fe3705c75e
# ╟─8590628c-72cd-11eb-3605-c5de42039a78
# ╠═934bbd0e-72cd-11eb-1dd0-db87d4840b96
# ╠═e51d829a-72d0-11eb-295f-ef8418ace68f
# ╠═91ed81b6-72cf-11eb-12d7-67f59ff7edc5
# ╟─17b75f46-72d1-11eb-1188-592c55914fac
# ╠═44caae9e-72d0-11eb-036d-b7cf58ba2a20
# ╠═57bfda54-72d0-11eb-0fa9-519e5c51652d
# ╟─4e0aab82-7224-11eb-1d76-0502b4fbfffa
# ╟─507b289a-7224-11eb-2a96-d9ff084c0434
# ╟─521872b6-7224-11eb-0fe2-e3893e2cb162
# ╟─66bd3d20-722e-11eb-1cfd-53db8195678c
# ╟─69ce4350-722f-11eb-3602-c1fb3b5f298b
# ╠═63e0cef4-722f-11eb-37a3-754f9c96ff0e
# ╟─2359c63c-72da-11eb-00cf-fbe4963d8a2a
# ╠═57995f8a-72e3-11eb-3b35-3dcab2011521
# ╠═970a8a0c-72d1-11eb-176d-99aa155c42ba
# ╠═3ab32708-72db-11eb-0388-27fedceedd5e
# ╠═acf784c8-72db-11eb-1cee-439fd487016f
# ╠═7474bed2-7302-11eb-232b-f34dc1d86bef
# ╠═10a31f0a-72dc-11eb-1cb6-61246da6084e
# ╠═f2dba3a2-72d6-11eb-307c-9b9e1067975a
# ╠═67830ede-72d2-11eb-2ba9-c36cb0fb0f8b
# ╠═0325f6ea-72d7-11eb-16b6-b5a5570a3a42
# ╠═3d1640b4-72d3-11eb-1a1e-11018fdd4602
# ╠═53b82aa8-72d3-11eb-2254-fd9c3e5e87ce
# ╟─7290616c-722f-11eb-2f6b-a35d5a656bf4
# ╟─744a9c22-722f-11eb-1931-67f2b3c32429
# ╟─87b43c1a-72db-11eb-1b82-7bdbde366406
