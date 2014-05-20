package com.tencent.mm.ui.voicetranstext;

import android.os.Handler;
import android.os.Message;

final class l extends Handler
{
  l(VoiceTransTextUI paramVoiceTransTextUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = paramMessage.what;
    if (i == 1)
      VoiceTransTextUI.b(this.huE, true);
    while (i != 2)
      return;
    VoiceTransTextUI.b(this.huE, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicetranstext.l
 * JD-Core Version:    0.6.2
 */