package com.tencent.mm.pluginsdk.ui.chat;

import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

final class af
  implements TextView.OnEditorActionListener
{
  af(ChatFooter paramChatFooter)
  {
  }

  public final boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) || ((paramInt == 0) && (ChatFooter.b(this.fqG))))
    {
      ChatFooter.c(this.fqG).performClick();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.af
 * JD-Core Version:    0.6.2
 */