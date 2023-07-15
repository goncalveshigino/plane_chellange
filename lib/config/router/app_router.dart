

import 'package:go_router/go_router.dart';

import '../../pages/pages.dart';

final appRouter = GoRouter(

  initialLocation: '/',

  routes: [

      

    GoRoute(
      path: '/',
      builder: (context, state) =>const GetTicket(),
    ),
   // GetTicket


    GoRoute(
      path: '/',
      builder: (context, state) =>const SelectSeatPage(),
    ),

    GoRoute(
      path: '/boarding_pass',
      builder: (context, state) =>const BoardingPassPage(),
    ),

    

    GoRoute(
      path: '/checkout',
      builder: (context, state) =>const  CheckOutPage(),
    ),

     GoRoute(
      path: '/type_ticket',
      builder: (context, state) =>const  TypeOfTicket(),
    ),


     GoRoute(
      path: '/search_flight',
      builder: (context, state) =>const  SearchFlight(),
    ),

    GoRoute(
      path: '/recent',
      builder: (context, state) =>const  RecentFlights(),
    ),

    GoRoute(
      path: '/ticket_from',
      builder: (context, state) =>const  TicketFromPage(),
    ),

  ],
);
