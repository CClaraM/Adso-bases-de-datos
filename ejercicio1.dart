import 'dart:io';

/*Ejercicio 1: Calculadora de Propinas para Delivery
Desarrolle una aplicación que calcule propinas para servicios de delivery. Solicite el valor del pedido, seleccione
el tipo de servicio (comida, farmacia, supermercado) y la calidad del servicio (excelente 20%, bueno 15%, regular
10%). Calcule la propina sugerida, el total a pagar y muestre un mensaje personalizado según la calificación del
servicio.*/

void main() {
  print("Evaluador de servicio\nIngrese el valor del pedido");
  double? valor_pedido =double.parse(stdin.readLineSync()!);
  print("Seleccione el tipo de servicio\n\t1. Comida.\n\t2. Farmacia.\n\t3. Supermarcado.\nSeleccione una opcion.");
  double? servicio_pedido =double.parse(stdin.readLineSync()!);
  print("Danos tu evaluacion de calidad de servicio\n\t1. exelente\n\t2. bueno\n\t3. regular\nDigita la opcion.");
  double? servicio_calidad =double.parse(stdin.readLineSync()!);

if (servicio_calidad==1) {
  print("La propina recomendada para el servicio es de ${valor_pedido*0.2} para un total de ${(valor_pedido*0.2)+valor_pedido}");
}else if (servicio_calidad==2){
  print("La propina recomendada para el servicio es de ${valor_pedido*0.15} para un total de ${(valor_pedido*0.15)+valor_pedido}");
} else {
  print("La propina recomendada para el servicio es de ${valor_pedido*0.1} para un total de ${(valor_pedido*0.1)+valor_pedido}");
}

}
/*Ejercicio 2: Verificador de Contraseñas Seguras
Cree un sistema que evalúe la fortaleza de contraseñas para aplicaciones móviles. Solicite una contraseña al
usuario y verifique: longitud mínima 8 caracteres, contiene mayúsculas, minúsculas, números y caracteres
especiales. Asigne puntaje (débil, media, fuerte, muy fuerte) y sugiera mejoras específicas.*/


/*Ejercicio 3: Calculadora de Tiempo de Viaje Urbano
Implemente una calculadora que estime tiempos de viaje considerando diferentes medios de transporte y
condiciones de tráfico. Solicite origen, destino (distancia en km), medio de transporte (a pie, bicicleta, carro,
transporte público) y hora del día (hora pico, normal). Calcule tiempo estimado y costo total.*/

/*Ejercicio 4: Generador de QR para WiFi
Desarrolle un generador de códigos QR para redes WiFi. Solicite el nombre de la red, contraseña, tipo de
seguridad (WPA, WEP, abierta) y genere un string con formato QR. Valide que la contraseña sea segura y
muestre instrucciones de uso para diferentes dispositivos móviles.*/

/*Ejercicio 5: Calculadora de Descuentos por Volumen
Cree una aplicación para calcular descuentos escalonados en compras online. Defina rangos de descuento: $0-
$50 (0%), $51-$100 (5%), $101-$200 (10%), $201+ (15%). Solicite el monto de compra, calcule el descuento
aplicable, muestre el ahorro y el total final con IVA (19%).*/

/*Ejercicio 6: Sistema de Notificaciones Push
Diseñe un simulador de sistema de notificaciones para aplicaciones móviles. Cree una clase Notificacion con
propiedades: título, mensaje, tipo (info, advertencia, error), fecha/hora, leída/no leída. Implemente métodos para
crear, marcar como leída, filtrar por tipo y mostrar estadísticas de notificaciones.*/

/*Ejercicio 7: Gestor de Ubicaciones Favoritas
Desarrolle un sistema para gestionar ubicaciones favoritas tipo GPS. Cree una clase Ubicacion con nombre,
latitud, longitud, categoría (casa, trabajo, restaurante, hospital) y notas. Permita agregar, eliminar, buscar por
categoría y calcular distancia aproximada entre dos ubicaciones.*/

/*Ejercicio 8: Reproductor de Lista Musical
Implemente un reproductor musical básico con clase Cancion (título, artista, duración, género, calificación) y clase
Playlist. Funcionalidades: crear playlist, agregar/quitar canciones, reproducir aleatoria, calcular duración total,
filtrar por género y mostrar estadísticas de reproducción.*/

/*Ejercicio 9: Gestor de Archivos Móvil
Cree un simulador de gestor de archivos para dispositivos móviles. Defina clase Archivo con nombre, tamaño,
tipo, fecha creación y ruta. Implemente operaciones: listar archivos, buscar por nombre/tipo, calcular espacio
usado, organizar por fecha/tamaño y simular transferencias entre carpetas.*/
/*Ejercicio 10: Sistema de Valoraciones y Reseñas
Desarrolle un sistema de reseñas tipo app store. Cree clase Reseña con usuario, calificación (1-5 estrellas),
comentario, fecha y utilidad. Implemente funciones para agregar reseñas, calcular promedio de calificaciones,
filtrar por estrellas, mostrar reseñas más útiles y generar estadísticas.*/