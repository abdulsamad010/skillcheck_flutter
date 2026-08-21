abstract class PersonalEvent {
}

class StorePersonalInfo extends PersonalEvent{
  final String name,education,profession;
  StorePersonalInfo(this.profession,this.education,this.name);

}