package com.tencent.mm.ui.transmit;

import android.view.View;
import android.view.Window;
import com.tencent.mm.sdk.platformtools.az;

final class ae
  implements az
{
  ae(SendAppMessageWrapperUI paramSendAppMessageWrapperUI)
  {
  }

  public final boolean ok()
  {
    if ((this.hrX.getWindow() == null) || (this.hrX.getWindow().getDecorView() == null) || (this.hrX.getWindow().getDecorView().getWindowToken() == null))
    {
      int i = SendAppMessageWrapperUI.a(this.hrX);
      boolean bool = false;
      if (i < 10)
      {
        SendAppMessageWrapperUI.b(this.hrX);
        bool = true;
      }
      return bool;
    }
    SendAppMessageWrapperUI.c(this.hrX);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.ae
 * JD-Core Version:    0.6.2
 */