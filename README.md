guard-stylus
============

A Guard plugin to watch and compile Stylus files

## Options

* `output` [string] -- (required) directory to output compiled files in
* `exclude` [regex] -- paths to exclude
* `all_on_start` [boolean] -- whether to compile all files on startup
* `all_on_change` [boolean] -- whether to compile all files whenever a single file changes

## Example

```ruby
guard 'stylus', :output => 'build', :all_on_start => true, :all_on_change => true do
  watch(%r{^src/(.+\.styl)$})
end
```

will compile files matching the regex `^src/(.+\.styl)$` and write the
compiled output in `build/\1` (e.g., `src/foo/bar.styl` goes to
`build/foo/bar.css`.

## Authors

* Tim Joseph Dumol <tim@timdumol.com>

## License

`guard-stylus` is licensed under the Apache 2.0 license. Please refer to
`LICENSE` for more details.
