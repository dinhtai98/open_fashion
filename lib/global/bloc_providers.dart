import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_fashion/blocs/account_bloc/account_bloc.dart';

List<BlocProvider> blocProviders = [
  BlocProvider(create: (_) => AccountBloc()),
];
