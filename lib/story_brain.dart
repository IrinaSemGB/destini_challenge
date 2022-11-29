import 'package:destini_challenge_starting/story.dart';

class StoryBrain {

  int _storyNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            'У вашего автомобиля лопнула шина на извилистой дороге в глуши без сотовой связи. Вы решаете поехать автостопом. Ржавый пикап с грохотом останавливается рядом с вами. Человек в широкополой шляпе с бездушными глазами открывает вам пассажирскую дверь и спрашивает: «Подвезти, мальчик?»',
        choice1: 'Я соглашусь. Спасибо за помощь!',
        choice2: 'Лучше спросить его сначала, не убийца ли он.'),
    Story(
        storyTitle: 'Он медленно кивает, игнорируя вопрос.',
        choice1: 'По крайней мере, он честный. Я заберусь внутрь.',
        choice2: 'Подождите, я знаю, как поменять шину.'),
    Story(
        storyTitle:
            'Когда вы трогаетесь с места, незнакомец начинает рассказывать о своих отношениях с матерью. С каждой минутой он становится все злее и злее. Он просит вас открыть бардачок. Внутри вы найдете окровавленный нож, два отрубленных пальца и кассету с Элтоном Джоном. Он тянется к бардачку.',
        choice1: 'Я люблю Элтона Джона! Дайте ему кассету.',
        choice2: 'Он или я! Вы берете нож и пронзаете его.'),
    Story(
        storyTitle:
            'Что? Знаете ли вы, что дорожно-транспортные происшествия являются второй по значимости причиной смерти от несчастных случаев для большинства взрослых возрастных групп?',
        choice1: 'Начать сначала',
        choice2: ''),
    Story(
        storyTitle:
            'Пробив ограждение и кренясь к зазубренным скалам внизу, вы начинаете сомневаться в решинии зарезать того, кто ведет машину, в которой вы находитесь.',
        choice1: 'Начать сначала',
        choice2: ''),
    Story(
        storyTitle:
            'Вы связываетесь с убийцей, напевая куплет «Ты чувствуешь любовь сегодня вечером?». Он высадит вас в следующем городе. Перед отъездом он спросит, знаете ли вы какие-нибудь хорошие места, где можно сбросить трупы. Вы говорите: "Попробуйте пирс".',
        choice1: 'Начать сначала',
        choice2: ''),
  ];

  String getStory() => _storyData[_storyNumber].storyTitle;
  String getChoice1() => _storyData[_storyNumber].choice1;
  String getChoice2() => _storyData[_storyNumber].choice2;
  bool buttonShouldBeVisible() => _storyNumber >= 0 && _storyNumber <= 2;

  void restart() {
    _storyNumber = 0;
  }

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber >= 3 || _storyNumber <= 5) {
      restart();
    }
  }
}