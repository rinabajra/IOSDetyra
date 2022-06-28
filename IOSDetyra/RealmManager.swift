//
//  RealmManager.swift
//  IOSDetyra
//
//

import Foundation
import RealmSwift

class RealmManager: ObservableObject{
    private(set) var localRealm: Realm?
    @Published private(set) var toDoTasks: [Task]=[]
    @Published private(set) var completedTasks: [Task]=[]

    init(){
        openRealm()
    }
     
    func openRealm(){
        
        do{
            
            let config = Realm.Configuration(schemaVersion:1)
            
            Realm.Configuration.defaultConfiguration = config
            
            localRealm = try Realm()
            
            getTasks()
            
        } catch {
            
            print("Error opening Realm: \(error)")
        }
    }
    
    func addTask(taskTitle: String, description: String, image: String){
        if let localRealm = localRealm{
            do{
                try localRealm.write{
                    let newTask  = Task(value: ["title": taskTitle, "descr": description, "image": image, "completed":false])
                    localRealm.add(newTask)
                    getTasks()
                    print("Added new task to Realm : \(newTask)")
                }
            } catch {
                print("Erro adding task to Realm: \(error)")
            }
        }
    }
    
    func getTasks(){
        if let localRealm = localRealm {
            let allTasks = localRealm.objects(Task.self).sorted(byKeyPath: "completed")
            toDoTasks = []
            completedTasks = []
            
            allTasks.forEach{
           task in
                if(task.completed){
                    completedTasks.append(task)
                }else{
                    toDoTasks.append(task)
                }
                
            }
        }
    }
    
    func updateTask(id: ObjectId, completed: Bool){
        
        if let localRealm = localRealm {
            do{
               let taskToUpdate =  localRealm.objects(Task.self).filter(NSPredicate(format:"id == %@",id))
                guard !taskToUpdate.isEmpty else{ return }
                
                try localRealm.write{
                    taskToUpdate[0].completed = completed
                    getTasks()
                    print("Updated task with id \(id)! Completed status: \(completed)")
                }
                
            } catch {
                
                print("Error updating task \(id) to Realm: \(error)")
            }
        }
    }
    
    func deleteTask(id: ObjectId) {
        if let localRealm = localRealm {
            do{
                let taskToDelete =  localRealm.objects(Task.self).filter(NSPredicate(format: "id == %@",id))
                 guard !taskToDelete.isEmpty else{ return }

                try localRealm.write{
                    localRealm.delete(taskToDelete)
                    getTasks()
                    print("Deleted task with id : \(id)")

                }

            } catch {

                print("Error deleting task\(id) from Realm \(error)")

            }
        }
    }
}
