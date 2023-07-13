// ignore_for_file: library_private_types_in_public_api, non_constant_identifier_names

class ApiEndPoints {
  static const String baseUrl = 'https://systemgym.space/api/v1/';
  static _AuthEndPoints authEndpoints = _AuthEndPoints();
}

class _AuthEndPoints {
  final String login_admin = 'login/admin';
  final String user_profile_admin = 'userProfile/admin';
  final String logout_admin = 'logout/admin';
  final String refresh_admin = 'refresh/admin';
  final String password_reset = 'password/reset';
  final String forget_password = 'password/emai';

  final String location = 'location';
  final String locationById = 'location/show?id=';
  final String subLocation = 'SubLocation';
  final String subLocationById = 'SubLocation/show?id=';

  final String prof = 'prof';
  final String profById = 'prof/show?id=';
  final String championshipLevel = 'ChampionshipLevel';
  final String championshipLeveById = 'ChampionshipLevel?id=';
  final String foodSystem = 'FoodSystem';
  final String foodSystemById = 'FoodSystem?id=';
  final String EmploymentTypes = 'EmploymentTypes';
  final String EmploymentTypesById = 'EmploymentTypes?id=';
  final String ProductType = 'ProductType';
  final String ProductTypeById = 'ProductType?id=';
  final String Subtype = 'Subtype';
  final String SubtypeById = 'Subtype?id=1';
  final String TournamentType = 'TournamentType';
  final String TournamentTypeById = 'TournamentType?id=';
  final String TrainingGroup = 'TrainingGroup';
  final String TrainingGroupById = 'TrainingGroup?id=';
  final String nationality = 'nationality';
  final String nationalityById = 'nationality/show?id=';

  final String team = 'team';
  final String teamAdd = 'team/add';
  final String teamShow = 'team/show?id=';
  final String teamUpdate = 'team/update?id=';
  final String teamDelete = 'team/delete?id=';

  final String Prize = 'Prize';
  final String PrizeById = 'Prize/show?id=';

  final String notifications = 'notifications';
  final String notificationsById = 'notifications/show?id=';

  final String tournament = 'tournament';
  final String tournamentAdd = 'tournament/add';
  final String tournamentShow = 'tournament/show?id=';
  final String tournamentUpdate = 'tournament/update?id=';
  final String tournamentDelete = 'tournament/delete?id=';

  final String Training = 'Training';
  final String TrainingAdd = 'Training/add';
  final String TrainingShow = 'Training/show?id=';
  final String TrainingUpdate = 'Training/update?id=';
  final String TrainingDelete = 'tournament/delete?id=';

  final String ChampionshipResult = 'ChampionshipResult';
  final String ChampionshipResultAdd = 'ChampionshipResult/add';
  final String ChampionshipResultShow = 'ChampionshipResult/show?id=';
  final String ChampionshipResultUpdate = 'ChampionshipResult/update?id=';
  final String ChampionshipResultDelete = 'tournament/delete?id=';

  final String section = 'section';
  final String sectionAdd = 'section/add';
  final String sectionShow = 'section/show?id=';
  final String sectionUpdate = 'section/update?id=';
  final String sectionDelete = 'tournament/delete?id=';

  final String DietPlan = 'DietPlan';
  final String DietPlanAdd = 'DietPlan/add';
  final String DietPlanShow = 'DietPlan/show?id=';
  final String DietPlanUpdate = 'DietPlan/update?id=';
  final String DietPlanDelete = 'DietPlan/delete?id=';

  final String Category = 'Category';
  final String CategoryAdd = 'Category/add';
  final String CategoryShow = 'Category/show?id=';
  final String CategoryUpdate = 'Category/update?id=';
  final String CategoryDelete = 'Category/delete?id=';

  final String product = 'product';
  final String productAdd = 'product/add';
  final String productShow = 'product/show?id=';
  final String productUpdate = 'product/update?id=';
  final String productDelete = 'product/delete?id=';

  final String subscripe = 'subscripe';
  final String subscripeAdd = 'subscripe/add';
  final String subscripeShow = 'subscripe/show?id=';
  final String subscripeUpdate = 'subscripe/update?id=';
  final String subscripeDelete = 'product/delete?id=';

  final String employee = 'employee';
  final String employeeAdd = 'employee/add';
  final String employeeShow = 'employee/show?id=';
  final String employeeUpdate = 'employee/update?id=';
  final String employeeDelete = 'product/delete?id=';

  final String Food = 'Food';
  final String FoodAdd = 'Food/add';
  final String FoodShow = 'Food/show?id=';
  final String FoodUpdate = 'Food/update?id=';
  final String FoodDelete = 'product/delete?id=';

  final String player = 'player';
  final String playerAdd = 'player/add';
  final String playerShow = 'player/show?id=';
  final String playerUpdate = 'player/update?id=';
  final String playerDelete = 'product/delete?id=';

  final String coach = 'coach';
  final String coachAdd = 'coach/add';
  final String coachShow = 'coach/show?id=';
  final String coachUpdate = 'coach/update?id=';
  final String coachDelete = 'product/delete?id=';

  final String accounting = 'accounting';
  final String accountingAdd = 'accounting/add';
  final String accountingShow = 'accounting/show?id=';
  final String accountingUpdate = 'accounting/update?id=';
  final String accountingDelete = 'product/delete?id=';

  final String clubAdd = 'club/add_club';
  final String clubUpdate = 'club/update';
}
