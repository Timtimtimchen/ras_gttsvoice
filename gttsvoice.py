from gtts import gTTS
import os

# 要轉換成語音的文字
text = "你好，這是一個範例文本，將被轉換成語音。"

# 創建gTTS對象
tts = gTTS(text)

# 儲存語音輸出成一個音訊檔案
tts.save("output.mp3")

# 播放語音檔案（需要系統有相應的音訊播放器）
os.system("mpg123 output.mp3")

