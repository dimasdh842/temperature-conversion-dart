import 'dart:io';

void main(List<String> arguments) {
    // print('masukan suhu dalam fahrenhait : ');
    // String name = stdin.readLineSync()!;
    print('Masukkan nomor suhu berikut sesuai dibawah : ');
    print('1) Celcius ');
    print('2) Kelvin ');
    print('3) reamur ');
    print('4) fahrenhait ');

    stdout.write('Masukkan satuan suhu awal : ');
    var suhuAwal = num.parse(stdin.readLineSync()!);

    stdout.write('Masukkan satuan suhu target : ');
    var suhuTarget = num.parse(stdin.readLineSync()!);


    stdout.write('Masukkan suhu  : ');
    var suhu = num.parse(stdin.readLineSync()!);
    var suhuAkhir = 0.0;

    // celcius to k,r,f
    if (suhuAwal == 1){
        if (suhuTarget == 2){
              suhuAkhir = suhu  + 273.15;
            print('$suhu derajat celcius = $suhuAkhir derajat kelvin');
        }
        if (suhuTarget == 3){
              suhuAkhir = suhu  * 0.8;
              print('$suhu derajat celcius = $suhuAkhir derajat reamur');
        }
        if (suhuTarget == 4){
              suhuAkhir = suhu  * 1.8 + 32;
              print('$suhu derajat celcius = $suhuAkhir derajat fahrenhait');
        }
    }
    
    //  kelvin to c,r,f
    if (suhuAwal == 2){
        if (suhuTarget == 1){
              suhuAkhir = suhu  - 273.15;
            print('$suhu derajat kelvin = $suhuAkhir derajat celcius');
        }
        if (suhuTarget == 3){
              suhuAkhir = (suhu  - 273.15) * 0.8;
              print('$suhu derajat kelvin = $suhuAkhir derajat reamur');
        }
        if (suhuTarget == 4){
              suhuAkhir = suhu  * 1.8 - 459.67;
              print('$suhu derajat kelvin = $suhuAkhir derajat fahrenhait');
        }
    }
   
    //  reamur to c,k,f
    if (suhuAwal == 3){
        if (suhuTarget == 1){
              suhuAkhir = suhu  * 1.25;
            print('$suhu derajat reamur = $suhuAkhir derajat celcius');
        }
        if (suhuTarget == 2){
              suhuAkhir =  suhu * 1.25 + 273.15;
              print('$suhu derajat reamur = $suhuAkhir derajat kelvin');
        }
        if (suhuTarget == 4){
              suhuAkhir =  suhu * 2.25 + 32;
              print('$suhu derajat reamur = $suhuAkhir derajat fahrenhait');
        }
    }
    
    //  fahrenhait to c,k,r
    if (suhuAwal == 4){
        if (suhuTarget == 1){
              suhuAkhir = suhu  * 1.25;
            print('$suhu derajat fahrenhait = $suhuAkhir derajat celcius');
        }
        if (suhuTarget == 2){
              suhuAkhir =  (suhu + 459.67) / 1.8;
              print('$suhu derajat fahrenhait = $suhuAkhir derajat kelvin');
        }
        if (suhuTarget == 4){
              suhuAkhir =  (suhu - 32) / 2.25;
              print('$suhu derajat fahrenhait = $suhuAkhir derajat reamur');
        }
    }
   

   
}