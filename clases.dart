class PersonaActividad {
  String nombre;
  int edad;
  double altura;
  double salario;

  PersonaActividad(this.nombre, this.edad, this.altura, this.salario); //valor para las variables
  //Metodos u operaciones
  //Funcion para saludar
  void presentarse(){ // funcion que no recibe valores
    print('Saludos a todos !! mi nombre es: $nombre');
  }

  void menor(){
    if (this.edad >= 18 ) {
      print("soy mayor de edad");
    } else {
      print("no soy mayor");
    }
  }

  void Salario(){
    if (this.salario >1500000) {
      print('subsidio de alimentacion es ${this.salario*0.023}');
      print('valor retefuente es ${this.salario*0.08}');
      print('Salario total es ${(this.salario*0.08)+(this.salario*0.023)+this.salario}');
    }
  }
} //Fin de clase personaActividad

void main(){
  PersonaActividad persona = PersonaActividad('Carlos', 34, 1.75, 1400000);
  // instanciar o crear el objeto
  persona.presentarse();
  print('mi estatura es ${persona.altura}');
  
  PersonaActividad persona2 = PersonaActividad("Ana maria", 21, 1.60, 1700000);
  persona2.presentarse();
  persona2.menor();
  persona2.Salario();

}