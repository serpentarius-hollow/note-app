import 'package:flutter/material.dart';

import '../../../../domain/notes/note_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final NoteFailure noteFailure;

  const CriticalFailureDisplay({
    Key? key,
    required this.noteFailure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            noteFailure.maybeMap(
              insufficientPermission: (_) => 'Insufficient permission.',
              orElse: () => 'Unexpected error. Please contact support.',
            ),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
