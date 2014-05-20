package com.tencent.mm.pluginsdk.ui;

import android.os.Handler;
import android.os.Message;

final class aq extends Handler
{
  aq(SmileyPanel paramSmileyPanel)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
    }
    SmileyPanel.a(this.fmB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.aq
 * JD-Core Version:    0.6.2
 */