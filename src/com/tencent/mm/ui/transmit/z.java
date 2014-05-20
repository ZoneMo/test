package com.tencent.mm.ui.transmit;

import android.content.Intent;
import com.tencent.mm.pluginsdk.ui.applet.r;

final class z
  implements r
{
  z(SelectConversationUI paramSelectConversationUI, Intent paramIntent)
  {
  }

  public final void a(boolean paramBoolean, String paramString, int paramInt)
  {
    if (paramBoolean)
    {
      this.hrR.setResult(-1, this.dnh);
      this.hrR.finish();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.z
 * JD-Core Version:    0.6.2
 */