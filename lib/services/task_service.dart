class TaskService{
   /// Class responsável por interagir com a fonte dos dados
  getTasks(){
    return List.generate(1000, (index) => 'Texto $index');
  }
}