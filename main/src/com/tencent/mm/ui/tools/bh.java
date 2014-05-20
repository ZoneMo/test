package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;

final class bh extends Handler
{
  bh(CropImageView paramCropImageView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 4653)
      if ((CropImageView.a(this.hiE) != null) && (CropImageView.m(this.hiE) != null))
      {
        CropImageView.m(this.hiE).cancel();
        CropImageView.n(this.hiE);
      }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      CropImageView.o(this.hiE);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bh
 * JD-Core Version:    0.6.2
 */