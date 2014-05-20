package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.ui.widget.MMEditText;

final class x extends Handler
{
  x(ChatFooter paramChatFooter)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1002:
    }
    do
      return;
    while ((ChatFooter.a(this.fqG) == null) || (paramMessage.obj == null));
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    if (bool)
      ChatFooter.a(this.fqG).setAlpha(1.0F);
    while (true)
    {
      ChatFooter.a(this.fqG, bool);
      return;
      ChatFooter.a(this.fqG).setAlpha(0.5F);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.x
 * JD-Core Version:    0.6.2
 */