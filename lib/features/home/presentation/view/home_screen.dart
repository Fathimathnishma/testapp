
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/features/home/presentation/provider/main_prvider.dart';
import 'package:test_app/features/home/presentation/view/widgets.dart/costumDial_wid.dart';
import 'package:test_app/general/utils/app_color.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}





class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController =ScrollController();

 


  @override
  void initState() {
     WidgetsBinding.instance.addPostFrameCallback((_) {
      final addProvider = Provider.of<MainProvider>(context, listen: false);
     
      });
      
      
   
    super.initState();
   void dispose(){
      _scrollController.dispose();
    }
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<MainProvider>(
      builder: (context, stateTaskAdd, child) => Scaffold(
        backgroundColor: Colorconst.primaryColor.withOpacity(0.7),
        appBar: AppBar(
          title:  const Text(
            "Users",
            style: TextStyle(color: Colors.white),
          ),
     
        
          backgroundColor: Colorconst.primaryColor.withOpacity(0.5),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomDialogWid(),
                ));
          },
          backgroundColor: Colorconst.primaryColor.withOpacity(0.4),
          child: const Icon(
            Icons.add,
            color: Colorconst.whiteColor,
          ),
        ),
        body: stateTaskAdd.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : (stateTaskAdd.isLoading == false && stateTaskAdd.alldata.isEmpty)
                ? const Center(child: Text("no data",style: TextStyle(color: Colorconst.whiteColor),))
                : ListView.separated(
                  controller: _scrollController, 
                    itemCount: stateTaskAdd.alldata.length  + (stateTaskAdd.noMoreData ? 0 : 1),
                  itemBuilder: (BuildContext context, int index) {
                     if (index == stateTaskAdd.alldata.length ) {
                      return 
                         const Center(child: CircularProgressIndicator(color: Colorconst.whiteColor,));
                      }
                      return ListTile(
                      title: Text(
                        stateTaskAdd.alldata[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      subtitle: Text(stateTaskAdd.alldata[index].amount.toString(),style: const TextStyle(color:Colorconst.whiteColor),),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider(
                      color: Colors.white,
                    );
                  },
                ),
      ),
    );
  }
}
