class PersonaActividad {
  String nombre;
  int edad;
  double altura;

  PersonaActividad(this.nombre, this.edad, this.altura); //valor para las variables
  //Metodos u operaciones
  //Funcion para saludar
  void presentarse(){ // funcion que no recibe valores
    print('Saludos a todos !! mi nombre es: $nombre');
  }

  void menor(){
    if (this.edad >= 18 ) {
      print("soy mayor de edad");
    } else {
      print("no es mayor");
    }
  }
} //Fin de clase personaActividad

void main(){
  PersonaActividad persona = PersonaActividad('Carlos', 34, 1.75);
  // instanciar o crear el objeto
  persona.presentarse();
  print(persona.altura);
  

  PersonaActividad persona2 = PersonaActividad("Ana maria", 21, 1.60);
  persona2.presentarse();
  persona2.menor();

}