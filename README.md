# Apple Token Generator

Quickly and easily generate a token to use with MusicKit JS for the web.

## What you'll need

1. Your Apple Developer Team ID
2. An Apple Music Key
3. A Key Id

If you need help finding these check out this article https://help.apple.com/developer-account/#/devce5522674

## Running this code
1. Download or clone the repo.
2. In your terminal cd to `apple-token-generator/`
3. Run `bundle install` (if this fails you may need to run `gem install bundler` first)
4. Run the generator 

format:
`./bin/apple-token-generator music PATH_TO_PRIVATE_KEY KEY_ID TEAM_ID`

example:
`./bin/apple-token-generator music ./AuthKey.p8 78938VHWKM 4R3M6JUFMD`
