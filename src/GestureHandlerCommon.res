type state = [#1 | #2 | #3 | #4 | #5]

type gestureEventPayload = {"handlerTag": int, "numberOfPointers": int, "state": state}

module GestureEvent = {
  module Make = (
    GestureHandlerEvent: {
      type gestureHandlerEventPayload
    },
  ) => {
    type nativeEvent = GestureHandlerEvent.gestureHandlerEventPayload
    type t = {nativeEvent: nativeEvent}
  }
}
