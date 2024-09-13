void main(){

// var myName = 'Carlos';
String myName = 'Carlos';
String myApellido = 'Crespo';

final int myDNI = 210237;
//late final int myAge;

print('Hola $myName $myApellido');

// Corregir mi nombre
myName = 'Carlos Iván';
//myDNI = 210237; //Esto ocaciona un eror por que la variable esta definida como final y no puede ejecutar 

print('hola, $myName $myApellido, tu matricula es: $myDNI y tu edad no la conosco porque no se cuando nacisate');

print('\nHola, ${myName.toLowerCase()} ${myApellido.toLowerCase()}, y tu matricula es $myDNI y tu edad no la consosco por que no se cuando naciste');

}