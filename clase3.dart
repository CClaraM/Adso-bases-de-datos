import 'dart:io';

class Cuenta {
    String propietatio;
    String _numeroCuenta;
    double _saldoCuenta;
    bool activo;
    List<dynamic> movimientos=[];
    //constructor
    Cuenta(this.propietatio, this._numeroCuenta, {saldoCuenta = 0.0,this.activo=true}):_saldoCuenta=saldoCuenta;
    void mostrarCuenta(){
        print("Nombre Titular: $propietatio\nEstado: ${activo ? 'Activa':'Inactiva'}");
    }

    double get saldoCuenta => _saldoCuenta;

    set saldo(double nuevoSaldo){
      nuevoSaldo>=0 ? _saldoCuenta+=nuevoSaldo:print("No se admite valores negativo");
    }
    
    void retiroCuenta(double monto){
      if (monto>=0) {
        _saldoCuenta-=monto;
        movimientos.remove(monto);
      }
    }
}

void main(List<String> args){
  Cuenta cuentaCTPI = Cuenta("Ana Maria Diaz", "4567890");
  stdout.write("Propietario de la cuenta ${cuentaCTPI.propietatio} y su numero de cuenta es ${cuentaCTPI._numeroCuenta}\n");
  cuentaCTPI.mostrarCuenta();
  print("El sado es ${cuentaCTPI.saldoCuenta}");
  cuentaCTPI.saldo = 100000;
  print("El sado es ${cuentaCTPI.saldoCuenta}");
  cuentaCTPI.saldo = -100000;
  print("El sado es ${cuentaCTPI.saldoCuenta}");
  cuentaCTPI.saldo = 100000;
  print("El sado es ${cuentaCTPI.saldoCuenta}");
  cuentaCTPI.retiroCuenta(20000);
  print("El sado es ${cuentaCTPI.saldoCuenta}");
}