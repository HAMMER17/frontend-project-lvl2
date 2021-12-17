install:
	npm ci
json:
	node bin/gendiff.js __fixtures__/file1.json __fixtures__/file2.json
stringify:
	node bin/gendiff.js --format json __fixtures__/file1.json __fixtures__/file2.json
plain:
	node bin/gendiff.js --format plain __fixtures__/file1.json __fixtures__/file2.json
yml:
	 node bin/gendiff.js __fixtures__/file1.yml __fixtures__/file2.yml
lint:
	npx eslint --fix .
test:
	npm test
test-coverage:
	npm test -- --coverage --coverageProvider=v8
	npx --no-install  gendiff /project/__fixtures__/file1.yml /project/__fixtures__/file2.yml