Algoritmo AlquilerDePeliculasDeCine
	Escribir "°=======================================°"
	Escribir "|| Bienvenidos a Cine en casa          ||"
	Escribir "|| Alquiler Película de cartelera      ||"
	Escribir "|| para ver en casa                    ||"
	Escribir "°=======================================°"      //banner de presentación y definición de costo
	Precioalquiler<-1500
	Mario<-0
	Barbie<-0
	Avartar<-0
	Escribir "Ingresar Opcion requeria"                     //clave 1234
	Escribir "1 - Cambio de precio del alquiles"
	Escribir "2 - Continuar con el alquiler"
	leer menu
	Mientras menu = 1
		Escribir "Favor ingrese su clave"
		Escribir "Clave de 4 Digitos"
		Leer clave
		si clave=1234
			Escribir "ingrese precio del alquiler"
			leer precionuevo
			Precioalquiler<-precionuevo
			menu<-menu+1
		sino
			Escribir "Clave incorrecta"
			Escribir "1 - Cambio de precio del alquiles"
			Escribir "2 - Continuar con el alquiler"
			leer menu2
			menu<-menu2
		FinSi
		
	FinMientras
	
	Escribir "Ingrese el día de la semana que desea alquilar" //se presenta oferta para el día lunes
	Escribir "Los dísa lunes tienes descuento del 50%"
	Escribir "El costo de la Película es de: " precioalquiler "$"
	Repetir                                            //opciones de Película a seleccionar
		Escribir "Ingrese la opción que desea alquilar"
		Escribir "1 - Mario Bros                    "
		Escribir "2 - Barbie"
		Escribir "3 - Avatar 2"
		Leer Pelicula
		segun Pelicula hacer    //ciclo hacer de acuerdo a la película
			
			1:
				si Mario =0
					Mario<-1      //verificar si ya fue adquirida sumando 1 al contador
					PeliculaSelec<-"Mario Bros"
					Escribir "1 - Lunes"
					Escribir "2 - Martes"
					Escribir "3 - Miércoles"
					Escribir "4 - Jueves"
					Escribir "5 - Viernes"
					Escribir "6 - Sábado"
					Escribir "7 - Domingo"
					Leer dia
					si dia>=8
						Escribir "Seleccion día no valido" //mensaje de selección invalido
						Precioalquiler<-0
					FinSi
					Escribir "1 - 15:00 hrs a 17:00 hrs"
					Escribir "2 - 18:00 hrs a 20:00 hrs"
					Escribir "3 - 21:00 hrs a 23:00 hrs"
					Leer Horario
					si Horario>=4
						Escribir "Seleccion no valida" //mensaje de selección invalido
						Precioalquiler<-0
					FinSi	
					si dia=1                           //calculo de precio si es dia lunes
						
						costomario=Precioalquiler*0.5
					SiNo
						costomario=Precioalquiler
					FinSi
				SiNo
					Escribir "Mario ya había sido alquilada"
					
				FinSi
				
			2:
				si Barbie = 0
					Barbie<-1
					PeliculaSelec = "Barbie"
					Escribir "1 - Lunes"
					Escribir "2 - Martes"
					Escribir "3 - Miércoles"
					Escribir "4 - Jueves"
					Escribir "5 - Viernes"
					Escribir "6 - Sábado"
					Escribir "7 - Domingo"
					Leer dia
					si dia>=8
						Escribir "Seleccion día no valido"
						Precioalquiler<-0
					FinSi
					Escribir "1 - 15:00 hrs a 17:00 hrs"
					Escribir "2 - 18:00 hrs a 20:00hrs"
					Escribir "3 - 21:00 hrs a 23:00hrs"
					Leer Horario
					si Horario>=4
						Escribir "Seleccion no valida"
						Precioalquiler<-0
					FinSi	
					si dia=1
						
						costoBarbie=Precioalquiler*0.5
					SiNo
						costoBarbie=Precioalquiler
					FinSi
				SiNo
					Escribir "Barbie ya había sido alquilada"
					
				FinSi
			3:
				si Avatar=0
					Avatar<-1
					PeliculaSelec= "Avatar 2"
					Escribir "1 - Lunes"
					Escribir "2 - Martes"
					Escribir "3 - Miércoles"
					Escribir "4 - Jueves"
					Escribir "5 - Viernes"
					Escribir "6 - Sábado"
					Escribir "7 - Domingo"
					Leer dia
					si dia>=8
						Escribir "Seleccion día no valido"
						Precioalquiler<-0
					FinSi
					Escribir "1 - 15:00 hrs a 17:00 hrs"
					Escribir "2 - 18:00 hrs a 20:00hrs"
					Escribir "3 - 21:00 hrs a 23:00 hrs"
					Leer Horario
					si Horario>=4
						Escribir "Seleccion no valida"
						Precioalquiler<-0
					FinSi	
					si dia=1
						
						costoavatar=Precioalquiler*0.5
					SiNo
						costoavatar=Precioalquiler
						
						
					FinSi
				SiNo
					Escribir "Avatar ya había sido alquilada"
				FinSi
				
			De Otro Modo:
				Escribir "Selección de Pelicula no valido"
				PeliculaSelec=""
				
		FinSegun
		
		preciodeldia=Precioalquiler
		
		segun dia hacer    //selector de dia de las semana para ser mostrado
			1:diaselec="Lunes"
			2:diaselec="Martes"
			3: diaselec="Miércoles"
			4:diaselec="Jueves"
			5:diaselec="Viernes"
			6:diaselec="Sábado"
			7:diaselec="Domingo"
			De Otro Modo:
				Escribir "Selección de día no valido"
				diaselec=""
		FinSegun
		
		Segun Horario Hacer  //selector de horarios para ser mostrado
			
			1:HorarioSelec="15:00 hrs a 17:00 hrs"
			2:HorarioSelec="18:00 hrs a 20:00hrs"
			3:HorarioSelec="21:00 hrs a 23:00 hrs"
			De Otro Modo:
				Escribir "Selección de horario no valido"
				HorarioSelec=""
		FinSegun
		Costofinal=costomario+costoBarbie+costoavatar   //suma de costo de cada Pelicula
		Escribir "°=======================================================°"
		Escribir "  Alquiler realizado :  "
		Escribir "  Película: " PeliculaSelec " " diaselec " " HorarioSelec 
		Escribir  "  El total a pagar es de :" Costofinal "$"
		Escribir "°=======================================================°"
		Escribir "si desea continuar alquilando ingrese cualquier valor"
		Escribir "Ingrerse 0 para salir"
		Leer Salir
		
	Hasta Que Salir = 0
	Escribir "°=======================================°"
	Escribir "||      Gracias por usar Cine en Casa   ||"
	Escribir "°=======================================°"
FinAlgoritmo
