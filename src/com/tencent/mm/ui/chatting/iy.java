package com.tencent.mm.ui.chatting;

import android.view.View;
import com.tencent.mm.pluginsdk.ui.EmojiView;
import com.tencent.mm.sdk.e.al;
import com.tencent.mm.sdk.platformtools.aa;

final class iy
  implements al
{
  iy(ChattingUI paramChattingUI)
  {
  }

  public final void ca(String paramString)
  {
    EmojiView localEmojiView = (EmojiView)this.gPG.aES().findViewById(EmojiView.qC(paramString));
    if (localEmojiView != null)
    {
      localEmojiView.refresh();
      aa.d("MicroMsg.ChattingUI", "emojiview update");
      if (!paramString.equals("create_emoji_info_notify"))
        break label63;
      ChattingUI.k(this.gPG);
    }
    label63: 
    while (!paramString.equals("delete_emoji_info_notify"))
    {
      return;
      this.gPG.aES().invalidate();
      break;
    }
    ChattingUI.k(this.gPG);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.iy
 * JD-Core Version:    0.6.2
 */