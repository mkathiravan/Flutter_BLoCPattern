# flutterbloc

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Introduction to BLoC:

The Business Logic Components (BLOC) is a design pattern that is presented by Google developers Paolo Soares and Cong Hui at Dart Conference 2018. 

![image](https://user-images.githubusercontent.com/39657409/77859946-e20dc400-7229-11ea-98d9-5663d3d53cbd.png)

The above diagram shows, how the data flow from user interface to the Data layer and vice versa. The BLOC will never have any reference of the widgets in the user interface Screen. The user interface screen will only observe changes coming from BLOC class. In general terms, data will be flowing from the BLOC to the UI or from UI to the BLOC in the form of streams. The BLoC pattern allows for a separation of the business logic of an application from the user interface by using streams and sinks.

Streams:- A stream is a continuous flow or succession of asynchronous events. Let’s take an example of pipe has two ends that containing some liquid. We can pass (input) from one end and then it is processed. It gets out from another end (output). such as a value, an event, an object, a collection, a map, an error or even another Stream.

Sink:-The property which takes input. We can update values of the stream and put multiple data values into a sink and when no more data is available.

We build all of our business logic with these streams and sink which allows us to use reactive libraries like RxDart. The streams and sink are provided by a StreamController.

StreamController:- We use properties of the widget as a Stream which will change in run time using StreamController. When you define a listener, you receive a StreamSubscription object. This is via that StreamSubscription object that you will be notified that something happens at the level of the Stream. As soon as there is at least one active listener, the Stream starts generating events to notify the active StreamSubscription object.

StreamBuilder:- acts as an observable eye which keeps on listening for these changes and updates the screen accordingly. It’s a method that takes stream as an input and provides us with a builder which rebuilds every time there is a new value of a stream.

StreamTransformer:- To control the processing of the data inside a Stream, we have to use StreamTransformer. It may be used to do any type of processing, such as:
 filtering: to filter the data based on any type of condition.
 modification: to apply any type of modification to the data.
 inject data to other streams,
 
So, that all to implement BLoC architecture in the Flutter. Let's create a small application to understand the flow of the stream.

The below screenshot is the output of this program:

![image](https://user-images.githubusercontent.com/39657409/77860029-695b3780-722a-11ea-968c-e7e2019d6efd.png)
