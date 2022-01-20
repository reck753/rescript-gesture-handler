type flingGestureHandlerEventPayload = {
  "x": float,
  "y": float,
  "absoluteX": float,
  "absoluteY": float,
}

type _eventPayloadForGestureHandler = {
  ...GestureHandlerCommon.gestureEventPayload,
  ...flingGestureHandlerEventPayload,
}

@react.component @module("react-native-gesture-handler")
external make: (
  ~onGestureEvent: _eventPayloadForGestureHandler => unit=?,
  ~direction: Directions.Direction.t=?,
  ~children: React.element,
) => React.element = "FlingGestureHandler"
