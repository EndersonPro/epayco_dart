# epayco_dart 🚧

## A wrapper for the ePayco web api built on APIfy

1. Para inicializar el servicio
Disponer del PUBLIC_KEY y PRIVATE_KEY de la cuenta de ePayco (Lo encuentras en Dashboard > Checkout > Configuración > Llaves Secretas).

```dart
final EPayco _epaycoClient = EPayco.instance.configure(
    privateKey: '<your-private-key>',
    publicKey: '<your-public-key>',
  );
```
`dart analyze`
> Enderson Vizcaino 