package com.tencent.mm.ui.transmit;

import android.content.Intent;
import com.tencent.mm.pluginsdk.ui.applet.r;

final class ag
  implements r
{
  ag(SendAppMessageWrapperUI paramSendAppMessageWrapperUI)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    this.hrX.setResult(-1, new Intent().putExtra("Select_stay_in_wx", true));
    this.hrX.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.ag
 * JD-Core Version:    0.6.2
 */