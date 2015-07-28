cron = require('cron').CronJob

module.exports = (robot) ->

 new cron('0 45 11 * * 1-5',
   () -> robot.messageRoom(process.env.HUBOT_HIPCHAT_ROOMS, "そろそろお昼の時間です。やったことをまとめてください")
 , null, true, "Asia/Tokyo")

 new cron('0 45 15 * * 1-5',
   () -> robot.messageRoom(process.env.HUBOT_HIPCHAT_ROOMS, "そろそろおやつの時間です。やったことをまとめてください")
 , null, true, "Asia/Tokyo")
 
 new cron('0 45 18 * * 1-5',
   () -> robot.messageRoom(process.env.HUBOT_HIPCHAT_ROOMS, "そろそろ終業時間です。やったことをまとめてください")
 , null, true, "Asia/Tokyo")