package com.tencent.mm.pluginsdk.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.c.a.eu;
import com.tencent.mm.c.a.ev;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.aa;

final class ao extends g
{
  ao(am paramam)
  {
  }

  public final boolean a(e parame)
  {
    aa.d("repullemojiinfodesc", " call back notify smileygrid");
    eu localeu = (eu)parame;
    Message localMessage = new Message();
    localMessage.obj = localeu.bPD.bPE;
    am.a(this.flT).sendMessage(localMessage);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.ao
 * JD-Core Version:    0.6.2
 */