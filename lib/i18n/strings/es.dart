// ignore_for_file: annotate_overrides

import '../translations/translations.dart';

class Es implements Translations {
  // Código de idioma de esta traducción
  String get languageCode => 'es';

  // Traducciones generales
  String get loading => 'Cargando...';
  String get okButton => 'Aceptar';
  String get nextButton => 'Siguiente';
  String get cancelButton => 'Cancelar';
  String get saveButton => 'Guardar';
  String get searchHint => 'Buscar...';
  String get defaultErrorTitle => 'Hemos tenido un problema';
  String get retryLogin => 'Intentar de nuevo';
  String get dataEmpty => 'Sin datos para mostrar';
  String get noContent => 'Contenido aún no disponible';
  String get readMore => 'Leer más';
  String get hello => 'Hola';
  String get welcome => 'Bienvenido';
  String get welcomeBack => 'Bienvenido de vuelta';
  String get login => 'Iniciar sesión';
  String get logout => 'Cerrar sesión';
  String get forgotPassword => '¿Olvidaste tu contraseña?';
  String get loginWithMicrosoft => 'Iniciar sesión con Microsoft';
  String get needHelp => '¿Necesitas ayuda?';
  String get or => 'o';
  String get insertYourInformationOfLogin =>
      'Ingresa tu información de inicio de sesión';
  String get insertYourUser => 'Ingresa tu usuario';
  String get user => 'Usuario';
  String get email => 'Correo electrónico';
  String get insertYourPassword => 'Ingresa tu contraseña';
  String get password => 'Contraseña';
  String get theBestSystemOf => 'El mejor sistema de';
  String get businessManagement => 'gestión empresarial';
  String get complaint => 'Queja';
  String get complaints => 'Quejas';
  String get searchComplaints => 'Buscar quejas';
  String get complaintRegistration => 'Registro de quejas';
  String get registeredBy => 'Registrado por';
  String get lastEdition => 'Última edición';
  String get description => 'Descripción';
  String get branch => 'Sucursal';
  String get sector => 'Sector';
  String get number => 'Número';
  String get status => 'Estado';
  String get enterDescription => 'Ingresa la descripción';
  String get responsible => 'Responsable';
  String get search => 'Buscar';
  String get newComplaint => 'Nueva queja';
  String get print => 'Imprimir';
  String get export => 'Exportar';
  String get report => 'Informe';
  String get reports => 'Informes';
  String get stepByStep => 'Paso a paso';

  @override
  Map<int?, List<String>> get httpErrors => {
        404: ['No Encontrado', 'No se encontraron datos'],
        401: [
          'No Autorizado',
          'Tu sesión puede haber caducado, vuelve a iniciar sesión'
        ],
        400: [
          'Solicitud Incorrecta',
          'Tu sesión puede haber caducado, vuelve a iniciar sesión'
        ],
        500: [
          'Error en el Servidor',
          'Problemas en el servidor interno, inténtalo de nuevo más tarde'
        ],
      };
}
