import 'dart:io';
import 'warrior.dart';
import 'mage.dart';
import 'rouge.dart';

void main(){
  print('Enter your character(warrior/rouge/mage):');
  String character = stdin.readLineSync()!;
  switch(character){
    case 'warrior' || 'Warrior' || 'WARRIOR':
    {
    print('Enter playername:');
    String player = stdin.readLineSync()!;
    print('Enter Strength:');
    int strength = int.parse(stdin.readLineSync()!);
    print('Enter Endurance:');
    int endurance = int.parse(stdin.readLineSync()!);
    warrior w = warrior(player, strength, endurance);
    w.insidewarrior();
    break;
    }

   case 'rouge' || 'Rouge' || 'ROUGE':
    
   { print('Enter playername:');
    String player = stdin.readLineSync()!;
    print('Enter stealthLevel:');
    int stealthLevel = int.parse(stdin.readLineSync()!);
    print('Enter agility:');
    int agility = int.parse(stdin.readLineSync()!);
    rouge r = rouge(player, stealthLevel, agility);
    r.insiderouge();
    break;
   }

   case 'mage' || 'Mage' || 'MAGE':
    
   { 
    print('Enter playername:');
    String player = stdin.readLineSync()!;
    print('Enter arcaneKnowledge:');
    int arcaneKnowledge = int.parse(stdin.readLineSync()!);
    print('Enter manaPool:');
    int manaPool = int.parse(stdin.readLineSync()!);
    mage m = mage(player, arcaneKnowledge, manaPool);
    m.insidemage();
    break;
   }

   default:
   {
    print('Enter a valid character!!');
    break;
   }


  }
}