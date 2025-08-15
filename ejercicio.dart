import 'dart:io';

void main() {
  print("Evaluador de servicio\nIngrese el valor del pedido");
  double? valor_pedido =double.parse(stdin.readLineSync()!);
  print(valor_pedido);
}


/* Solicite el valor del pedido, seleccione
el tipo de servicio (comida, farmacia, supermercado) y la calidad del servicio (excelente 20%, bueno 15%, regular
10%). Calcule la propina sugerida, el total a pagar y muestre un mensaje personalizado según la calificación del
servicio. */


/*void main() {
	print("Se calculara el area de un rectangulo\nIngrese la medida de la base");
	//String? base = stdin.readLineSync();
	int? base = int.parse(stdin.readLineSync()!);
	print("El dato ingresado es ${base}\nIngresa la altura del rectangulo");
	//String? altura = stdin.readLineSync();
	int? altura = int.parse(stdin.readLineSync()!);
	print("El dato ingresado es ${altura}\nEl area del rectangulo es ${base*altura}");
}*/