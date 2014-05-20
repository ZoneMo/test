package com.tencent.mm.ui.transmit;

import com.tencent.mm.pluginsdk.ui.applet.r;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;

final class af
  implements r
{
  af(SendAppMessageWrapperUI paramSendAppMessageWrapperUI, WXMediaMessage paramWXMediaMessage)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      SendAppMessageWrapperUI.a(this.hrX, this.bLA, paramString, paramInt);
      return;
    }
    SendAppMessageWrapperUI.d(this.hrX);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.af
 * JD-Core Version:    0.6.2
 */