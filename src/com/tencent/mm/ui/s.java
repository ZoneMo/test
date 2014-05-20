package com.tencent.mm.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ch;

final class s extends Handler
{
  s(DataTransferUI paramDataTransferUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((DataTransferUI.a(this.glg) != null) && (DataTransferUI.a(this.glg).isShowing()))
    {
      aa.e("MicroMsg.DataTransferUI", "dialog has shown for a long time, auto dismiss it...");
      DataTransferUI.a(this.glg).dismiss();
      this.glg.finish();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.s
 * JD-Core Version:    0.6.2
 */