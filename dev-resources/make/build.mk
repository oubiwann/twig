all: clj jar cljs

clj:
	lein compile

deps:
	lein deps

jar:
	lein jar

cljs:
	lein cljsbuild once twig

node:
	lein cljsbuild once node

clean:
	lein clean
	rm -rf .repl-* pom.xml*

travis: clean clj jar node cljs check
