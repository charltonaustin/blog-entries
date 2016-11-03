### Pomodoro
If you haven't every used the [pomodoro technique](http://pomodorotechnique.com/) then you are missing out.
I've started using it and a standing desk to help keep me focused and without back pain.
One thing about it is I don't have a pomodoro timer.
For a while I was using my phone timer which worked okay, but I really wanted something that didn't bother my neighbors.
In comes the at command.
If you haven't used it the at command schedules a command to execute sometime in the future.
In the case of OSX there is a great little utility that can send events to apps.
Putting those two things together I came up with this.
``` at now + 25 minutes <<< "osascript -e 'tell app \"System Events\" to display dialog \"Take A Break Pomodoro :)\"'" ```
This is a command that you can put into a script and then pretty easily start a pomodoro timer from your command line.
It will send your screen a pop up reminding you to take a short break after 25 minutes.
The next steps would be having a hook so then when you hit okay it starts up a 5 min timer that has another pop up.
That next pop up should set another timer for 25 minutes and then maybe I will never forget to set up my next pomodoro timer.
