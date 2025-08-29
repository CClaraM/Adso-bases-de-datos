/*Ejercicio 2: Verificador de Contraseñas Seguras
Cree un sistema que evalúe la fortaleza de contraseñas para aplicaciones móviles. Solicite una contraseña al
usuario y verifique: longitud mínima 8 caracteres, contiene mayúsculas, minúsculas, números y caracteres
especiales. Asigne puntaje (débil, media, fuerte, muy fuerte) y sugiera mejoras específicas.*/

import 'dart:io';

void main(){
  print("Evaluador de paswords\nIngresa tu pasword y presione intro");
  String? input_password = stdin.readLineSync();
  if (input_password != null){
    if (input_password.length < 8 ) {
      print("Tu contrasenia no cumple con un minimo de 8 caracteres");
    } else {
      int count=0;
      bool mayus=false;
      bool special=false;
      bool num=false;
      final regex = RegExp(r'^[a-zA-Z0-9]$');
      final regexN = RegExp(r'^[0-9]$');
      final regexM = RegExp(r'^[A-Z]$');
      input_password.split('').forEach((str){
          if (!regex.hasMatch(str)) {count+=5;special=true;}// Tambien se puede trabajar con el caracter ASCII y su valor binario pero esta funcion es dedicada
          if (regexN.hasMatch(str)) {count+=3;num=true;}
          if (regexM.hasMatch(str)) {count+=2;mayus=true;}
          count+=1;
      });

      print(count);
      stdout.write("El pasword ingresado ");
      if (mayus){stdout.write("contiene mayusculas, ");} else {stdout.write("no contiene mayusculas, ");}
      if (special){stdout.write("contiene caracteres especiales, ");} else {stdout.write("no contiene caracteres especiales, ");}
      if (num){print("contiene numeros.");} else {print("no contiene numeros.");}
      stdout.write("La seguridad que ofrece su pasword es ");
      if (count>90){print("muy fuerte");} else if (count>65){print("fuerte");} else if (count>45) {print("media");} else {
        print("debil");
      }
    }
  } else {
    print("Ingresa un valor valido");
  }
  
}

