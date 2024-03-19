@PHONY: run_jar run_native clean

Foo.class: Foo.java
	javac Foo.java

Foo.jar: Foo.class META-INF/MANIFEST.MF
	jar --create --manifest META-INF/MANIFEST.MF --file Foo.jar Foo.class

run_jar: Foo.jar
	java -jar Foo.jar

Foo: Foo.jar
	native-image -jar Foo.jar

run_native: Foo
	./Foo

clean:
	rm -rf Foo.class Foo.jar Foo
