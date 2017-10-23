## Swing Exercise

Your mission, should you choose to accept it, is to create a Tic-Tac-Toe game!

As you are going along, please compile and check that you are on the right track regularly.  Do not just type, type, type.  Studies have shown that more senior software engineers tend to make smaller steps, whereas junior engineers like to type in hundreds of lines then see if they compile.  Become a senior engineer as soon as you can!

### Instructions

The first thing to do is import all of the libraries that we need.  Specifically, we will want the java.awt.*, java.awt.event.*, and javax.swing.* classes.  We will see why later.

```java
import java.awt.*;
import java.awt.event.*; 
import javax.swing.*;
```

After that, it's time to create a new frame.  A frame is what most people think of as a window (this is actually an old term - Emacs, for example, calls a window a "frame").  Creating a JFrame will create a new window.  You can set its size, default closing behavior, etc.  Frames are constructed like so:

```java
    JFrame _frame = new JFrame("Tic-Tac-Toe");
```

You should create this as an instance variable, not in a method.  Example:

```java
public class TicTacToe {
    JFrame _frame = new JFrame("Tic-Tac-Toe");

    public static void main(String[] args) {
       
    }

}
```

You will note that our class is a JFrame, and not a Frame.  Frames are AWT (Abstract Window Toolkit) classes; JFrames are Swing classes.  Swing is a GUI framework built on top of AWT (which is much nicer, trust me).  You will find that most classes that start with J have an equivalent J-less class in AWT.

We will do most of the work in the constructor; our main method should just make a new instance of the TicTacToe class.

```java
    public static void main(String[] args) {
	new TicTacToe();
    }
```

The last line of the constructor should let the frame be visible.  We can generate all of the data/elements/etc. "behind the scenes" without displaying them to the user, and then show them the finished version.  If you find that a window is not updating, it may be that you need to "force" a refresh by setting the frame to visible again.  It won't hurt anything if you do it more times than necessary (except when it comes to performance).

```java
	// Refresh window - otherwise we will not be able to see it
	// THIS IS A COMMON SOURCE OF BUGS!
	_frame.setVisible(true);
```

You can set the size of the frame by using the `setSize(width, height)` method on the frame.  `width` and `height` are specified in pixels.  The size of the frame is up to you.  Figure out what works best on your screen.  This can be done in the constructor.

```java
    	   _frame.setSize(400, 400);
	   _frame.setVisible(true);

```

You can set what should happen the user closes the window.  In many cases, we will want the program to exit; in others, we would want other events to occur.  For example, if you have multiple Firefox windows open, and you close one, you would not want the whole program to exit!  In our case, though, since we will have only one window and we will not need it to run in the background.  You can also do this in the constructor.

```java
	_frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
```

Feel free to look at the JFrame API (https://docs.oracle.com/javase/8/docs/api/javax/swing/JFrame.html) to see what else you can do!  Look under WindowConstants.

Now, we want to have two sections of the frame.  Each of these sections is called a panel, and like good Swing classes, are called JPanels.  Create them

```java
	JPanel _ttt = new JPanel();
	JPanel _newPanel = new JPanel();
```

The top panel is going to be a grid layout (that is, it will have all of its elements in a two-dimensional grid, just like a Tic-Tac-Toe board).  Each spot in the grid will be a button.  The bottom panel is only going to have one button in it, so it doesn't really matter what layout we use.

In the constructor, set their respective layouts:

```java
	_ttt.setLayout(new GridLayout(3, 3));
	_newPanel.setLayout(new FlowLayout());
```

The Grid layout will position any elements (e.g. textboxes, buttons, labels, etc.) in a 3x3 layout.  The FlowLayout will just position the elements one after another, like letters in a line of text.  Also like a line of text, when no more elements fit, it will go "down" to the next line.

Now in the constructor, position them like so:

```java

	// This will place the tic-tac-toe panel at the top of
	// the frame and the newPanel panel at the bottom
	_frame.add(_ttt, BorderLayout.NORTH);
	_frame.add(_newPanel, BorderLayout.SOUTH);

```


Create nine buttons to put in the 3x3 layout and add them.  You can do this with a simple for loop:

```java
public class TicTacToe {
    JButton[] _buttons = new JButton[9];
...
```

In the constructor:

```java
	for (int j=0; j<9; j++) {
	    // Make a new button in the array location with text "_"
	    _buttons[j] = new JButton("_");
	    // Associate a new ButtonListener to the button (see below)
	    ActionListener buttonListener = new ButtonListener();
	    _buttons[j].addActionListener(buttonListener);
	    // Set the font on the button
	    _buttons[j].setFont(new Font("Courier", Font.PLAIN, 48));
	    // Add this button to the _ttt panel
	    _ttt.add(_buttons[j]);
	}
```

This will create nine buttons along with their _listeners_ - that is, objects that "listen" for an event to take place, and then execute code when it happens.  We will fill in the listeners soon.

Before you can compile, add a ButtonListener.  This can be an internal (non-public) class.  In our case, we will start with a button which just changes to X when it is pressed.

```java
    class ButtonListener implements ActionListener {

	// Every time we click the button, it will perform
	// the following action.

	public void actionPerformed(ActionEvent e) {

	    JButton source = (JButton) e.getSource();
	    String currentText = source.getText();
	    if (currentText.equals("_")) {
		source.setText("X");
	    } else {
		source.setText("_");
	    }
	}
    
    }

```

Their default text on the button is `"_"` (the String argument to the JButton constructor).  When a user presses a button, the associated ActionListener for the clicked button will have its actionPerformed(ActionEvent e) method called.  We associated the listener with our button when we did the `_buttons[j].addActionListener(buttonListener);` statement.  Now when a button is pressed, the actionPerformed event actions take place.  If the text was a `"_"`, it will be changed to an `"X"`; otherwise, it will be set back to `"_"`.

Using the above code as a base, create one button and listener for the other panel in the layout (`newPanel`).

Using the previous steps as a base, create the listener for the "new game" button.  It should "erase" all of the buttons, putting them back to their default text when pressed.

Using the previous steps as a base, create a boolean variable which flip-flops every time somebody presses a button.  The first time a button is pressed, the player should be an X, the second time an O, the third time an X, etc.  You can determine whether to make the spot an X or O based on this flip-flop variable.

Finally, add code to ensure that users cannot press a button which is already an X or an O.

### Additional Information

Feel free to take a look at the sample code for these classes to help put the system together:

1. Frames - https://github.com/laboon/cs0401/blob/master/sample_code/FrameDemo.java
1. Panels - https://github.com/laboon/cs0401/blob/master/sample_code/PanelDemo.java and https://github.com/laboon/cs0401/blob/master/sample_code/PanelDemo2.java
2. Extending Panels - https://github.com/laboon/cs0401/tree/master/sample_code/extended_jpanel
3. Creating and Interacting with Buttons - https://github.com/laboon/cs0401/blob/master/sample_code/ButtonDemo.java
4. Creating a Grid Layout - https://github.com/laboon/cs0401/blob/master/sample_code/GridDemo.java
5. Dynamically Changing A Button - https://github.com/laboon/cs0401/blob/master/sample_code/NameChangeButtonDemo.java

Remember that part of being a software engineer is knowing how to look things up on your own!  If you don't understand how something works, feel free to look at the Java API pages (http://docs.oracle.com/javase/8/docs/api/).  

For fun, you can add code to detect when a player has won or lost.  For even more fun, add some artificial intelligence and have the computer play the user! 

You may ask me questions or show me code, but as this an ungraded exercise, you do _not_ need to show me your final product unless you want to do so.

```
GRADING:
UNGRADED EXERCISE
```