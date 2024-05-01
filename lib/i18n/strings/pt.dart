// ignore_for_file: annotate_overrides

import '../translations/translations.dart';

class Pt implements Translations {
  // Language code from this Translation
  String get languageCode => 'pt';

  // General translations
  String get loading => 'Carregando...';
  String get okButton => 'OK';
  String get nextButton => 'Avançar';
  String get cancelButton => 'Cancelar';
  String get saveButton => 'Salvar';
  String get searchHint => 'Pesquisar...';
  String get defaultErrorTitle => 'Tivemos um problema';
  String get retryLogin => 'Entrar novamente';
  String get dataEmpty => 'Sem dados para exibir';
  String get noContent => 'Conteúdo ainda não disponível';
  String get readMore => 'Ler mais';
  String get hello => 'Olá';
  String get welcome => 'Bem-vindo';
  String get welcomeBack => 'Bem-vindo de volta';
  String get login => 'Entrar';
  String get logout => 'Sair';
  String get forgotPassword => 'Esqueceu a senha?';
  String get loginWithMicrosoft => 'Entrar com Microsoft';
  String get needHelp => 'Precisa de ajuda?';
  String get or => 'ou';
  String get insertYourInformationOfLogin => 'Insira suas informações de login';
  String get insertYourUser => 'Insira seu usuário';
  String get user => 'Usuário';
  String get email => 'E-mail';
  String get insertYourPassword => 'Insira sua senha';
  String get password => 'Senha';
  String get theBestSystemOf => 'O melhor sistema de';
  String get businessManagement => 'gestão empresarial';
  String get complaint => 'Reclamação';
  String get complaints => 'Reclamações';
  String get searchComplaints => 'Pesquisar Reclamações';
  String get complaintRegistration => 'Cadastro de reclamações';
  String get registeredBy => 'Registrado por';
  String get lastEdition => 'Última edição';
  String get description => 'Descrição';
  String get branch => 'Filial';
  String get sector => 'Setor';
  String get number => 'Número';
  String get status => 'Status';
  String get enterDescription => 'Insira a descrição';
  String get responsible => 'Responsável';
  String get search => 'Pesquisar';
  String get newComplaint => 'Nova Reclamação';
  String get print => 'Imprimir';
  String get export => 'Exportar';
  String get report => 'Relatório';
  String get reports => 'Relatórios';
  String get stepByStep => 'Passo a Passo';

  @override
  Map<int?, List<String>> get httpErrors => {
        404: ['Não Encontrado', 'Nenhum dado encontrado'],
        401: [
          'Não Autorizado',
          'Sua sessão pode ter expirado, entre novamente'
        ],
        400: [
          'Não Autorizado',
          'Sua sessão pode ter expirado, entre novamente'
        ],
        500: [
          'Erro no Servidor',
          'Problemas no servidor interno, tente novamente mais tarde'
        ],
      };
}
