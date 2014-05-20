package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class fo extends Handler
{
  fo(ShareImgUI paramShareImgUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    ShareImgUI.b(this.hmo);
    if (cj.hX(this.hmo.filePath))
    {
      aa.e("MicroMsg.ShareImgUI", "launch : fail, filePath is null");
      ShareImgUI.c(this.hmo);
      this.hmo.finish();
      return;
    }
    ShareImgUI.d(this.hmo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fo
 * JD-Core Version:    0.6.2
 */