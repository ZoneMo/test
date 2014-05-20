package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;

final class cd extends Handler
{
  cd(ImageGalleryUI paramImageGalleryUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    int i = paramMessage.arg1;
    this.hkn.g(true, i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cd
 * JD-Core Version:    0.6.2
 */