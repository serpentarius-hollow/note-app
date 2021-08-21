part of 'note_watcher_bloc.dart';

@freezed
class NoteWatcherEvent with _$NoteWatcherEvent {
  const factory NoteWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory NoteWatcherEvent.watchIncompleteStarted() =
      _WatchIncompleteStarted;
  const factory NoteWatcherEvent.notesReceived(
    Either<NoteFailure, KtList<Note>> failureOrNotes,
  ) = _NotesReceived;
}
