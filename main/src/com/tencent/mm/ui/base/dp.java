package com.tencent.mm.ui.base;

import android.os.Handler;
import android.os.Message;

final class dp extends Handler
{
  dp(ce paramce)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    this.gCL.dismiss();
    super.handleMessage(paramMessage);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.dp
 * JD-Core Version:    0.6.2
 */