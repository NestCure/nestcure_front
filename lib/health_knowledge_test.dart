import 'package:flutter/material.dart';
import 'package:survey_kit/survey_kit.dart';

class HealthKnowledgeTestScreen extends StatelessWidget {
  const HealthKnowledgeTestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Test de Coneixements Salut'),
      ),
      body: SurveyKit(
        onResult: (SurveyResult result) {
          // Procesa el resultado del test
        },
        task: _getSampleSurveyTask(),
        showProgress: true,
        localizations: const {
          'cancel': 'Cancel·lar',
          'next': 'Següent',
        },
        themeData: Theme.of(context).copyWith(
          colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: Theme.of(context).primaryColor,
            secondary: Colors.blue, // Fondo azul para las opciones seleccionadas
            onSecondary: Colors.white, // Texto blanco en las opciones seleccionadas
            onSurface: Colors.black, // Color del texto al seleccionar
          ),
          textTheme: Theme.of(context).textTheme.copyWith(
            bodyLarge: const TextStyle(color: Colors.black), // Color del texto por defecto
          ),
        ),
      ),
    );
  }

  Task _getSampleSurveyTask() {
    return NavigableTask(
      id: TaskIdentifier(),
      steps: [
        InstructionStep(
          title: 'Benvingut al Test de Coneixements de Salut',
          text: 'A continuació, realitzaràs una sèrie de preguntes per validar els teus coneixements.',
          buttonText: 'Començar',
        ),
        QuestionStep(
          title: 'Pregunta 1',
          text: 'Què és la RCP?',
          answerFormat: const SingleChoiceAnswerFormat(
            textChoices: [
              TextChoice(text: 'Reanimació CardioPulmonar', value: 'correct'),
              TextChoice(text: 'Respiració Controlada Progressiva', value: 'wrong1'),
              TextChoice(text: 'Reacción Cutánea Postural', value: 'wrong2'),
            ],
          ),
        ),
        QuestionStep(
          title: 'Pregunta 2',
          text: 'Quin és el símbol de l\'emergència mèdica?',
          answerFormat: const SingleChoiceAnswerFormat(
            textChoices: [
              TextChoice(text: 'Creu Vermella', value: 'correct'),
              TextChoice(text: 'Estrella de David', value: 'wrong1'),
              TextChoice(text: 'Caduceu', value: 'wrong2'),
            ],
          ),
        ),
        CompletionStep(
          stepIdentifier: StepIdentifier(id: 'completion'),
          text: 'Has completat el test. Gràcies per la teva participació!',
          title: 'Fi del Test',
          buttonText: 'Finalitzar',
        ),
      ],
    );
  }
}





