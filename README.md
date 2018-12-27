# Browser

Simple URI dispatch script


## What is the purpose of browser?

To specify what URLs/URIs get opened with what applications, in an easy and
configurable way.

## Examples

### Example configuration

`~/.uricap`

```
(magnet:.*)                             transmission-remote -a "$1"
(https://(www.)youtube.com/watch\?v=.*) mpv "$1"
(https?://?.*)                          w3m "$1"
```


### Example Usage

```
$ browser https://www.duckduckgo.com
[ Opens duckduckgo in w3m ]
```

```
$ browser https://www.youtube.com/watch?v=dQw4w9WgXcQ
[ opens video with mpv ]
```

