# [TeleENCoder]

__Still in beta…__

### Variables

___(For local/vps deployment rename [.env.sample](.env.sample) to .env and edit with your variable)___
(list of available variables isn't complete.)
---
Compulsory Variables | Explanation
:--------- | :---------------------------------------------
`APP_ID` `API_HASH` `BOT_TOKEN` | get the first two from *[Telegram.org](https://telegram.org)* and the third from *[@Botfather](https://t.me/botfather)*
`OWNER`    | input id Of allowed users with a space between each

Optional Variables | Explanation
:--------- | :---------------------------------------------
`THUMBNAIL` `ICON` | input telegraph link of a picture for use as Thumbnail, Watermark.
`FFMPEG` | input Your FFMPEG Code or Handbrake-cli code (after installing it)  with """{}""" as input and output. (Eg. __ffmpeg -i """{}""" -preset veryfast -vcodec libx265 -crf 27 """{}"""__) escape the " characters if you're deploying locally 
`TEMP_USERS` | Additional restricted users allowed to use the bot
`LOG_CHANNEL` | Input Log Group/Channel ID (bot must be an admin in target group or channel)
`DATABASE_URL` | input valid Mongodb Database Url
`ENCODER` | Encoder's name/nickname to be included in captions can also contain encode info.
`FCHANNEL` `FCHANNEL_STATS` | Input Channel id where **only** the output video will get forwarded. For the 2nd variable input message id of a message in channel to be used as live status for encodes.
`LOGS_IN_CHANNEL` type=bool | Get error logs in log channel. Turned off by default, set to True to turn on.
`ALWAYS_DEPLOY_LATEST` type=bool | When starting bot always pull latest code from upstream repo or default repo if none is given 
`CMD_SUFFIX` | Bot will only listen to commands ending with the given value
`TELEGRAPH_API` | Api to use instead of api.telegra.ph when posting mediainfo
`LOCK_ON_STARTUP` | Pause bot on startup untill pause off is used.
`FS_THRESHOLD` | Threshold for bot to sleep on floodwait in seconds
`ALLOW_ACTION` type=bool | Set to True or False depending on whether you want encoding chat actions enabled for bot
`UPSTREAM_REPO` `UPSTREAM_BRANCH` | Input custom repo link and custom repo branch name, For use with the update function
  . | *Note:* Update will fail if there are new modules or dependencies in bot. Redeploy if that happens 
---

### Features:
__(Coming Soon)__

### Source 

- **[An Heavily Modified Fork of Danish CompressorQueue](https://github.com/1Danish-00/CompressorQueue)**
# TeleEncoder
