I had a chance for the first time in a while to write some Go.
I was writing a simple web api that allowed a user to login with JWT.
It was pretty interesting.
This blog post is going to be about some of the challenges I faced along the way.
I also want to give some shout outs to other blogs that helped me get it written.

### The IDE
First let's start with the IDE.
Golang has a great page with all the IDEs that it uses [here](https://github.com/golang/go/wiki/IDEsAndTextEditorPlugins).
I choose [LiteIDE](https://github.com/visualfc/liteide) because I remembered using it before and it being full featured as well as simple.
It was fantastic.
The setup was super simple.
I could run tests, compile, and do most things pretty much with push button out of the box.
And to boot it is all open source and cross platform compatible.
Considering my experiences recently with trying to find a good IDE for JavaScript with built in debugging and test running capabilities this invigorated me.
The one thing that I wished happened better was documentation, code navigation, and code completetion.
Anyone that has used IntelliJ for Java can attest to how powerful the tooling can be in Java.
Golang is a strongly typed language with great documentation.
I can only imagine that Google has some incredible tools for dealing with Go.

### The documnetation
If you haven't had a chance to use Go before you are in luck.
The [documentation](https://golang.org/doc/) and the community are both great.
One problem that I was trying to solve was finding a good protocol for encrypting and decrypting passwords.
A quick google search showed some great results inlcuding [this](https://astaxie.gitbooks.io/build-web-application-with-golang/content/en/09.5.html) and [this](https://github.com/dgrijalva/jwt-go).
Both led to a pretty seamless password storage process that I felt comfortable with.

### Writing a web service in Go
Writing the webserivce reminded me of writing a webserver in NodeJS.
The syntax is clean.
You can switch between a functional and procedural style pretty easily.
The one thing that can be a blessing or a curse is the types.
The types are better than Scala, but still they are types.
After spending some time writing web services in Node you get comfortable without types.
Don't get me wrong.
Types are great for big projects and teams.
But there has been interesting work in Clojure and JavaScript for types that are optional and only there when you need them.

### One nice little perk from the project

One thing that I did that I found easier than most projects was write a full end to end test for the webserver.
The basic script was as follows.

```bash
go get
go build -o /tmp/app
/tmp/app &
PID=$!
go test
echo "killing the app pid: $PID"
kill $PID
```
Now here go shines beautifully.
The test would simply fire up an http client make some requests on a health_check url I built into the api.
The output looked like this.
```bash
$ time ./build.sh test 
testing the app
2016/08/27 14:15:40 listening on 0.0.0.0:8080
PASS
ok      _/path/to/app   0.003s
killing the app pid: 32440
./build.sh test  1.26s user 0.15s system 124% cpu 1.136 total
```
It was pretty nice to have a full stack test that ran so quickly.
Notice that the 1.26s comes from starting up the app.
The tests ran rather quickly.

### Wrap up
Overall I rather enjoyed Go.
I'm definitely going to explore it more.
