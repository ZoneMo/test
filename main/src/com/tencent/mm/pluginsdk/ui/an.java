package com.tencent.mm.pluginsdk.ui;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.Map;

final class an extends Handler
{
  an(am paramam)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.d("repullemojiinfodesc", "notify smileygrid");
    String str = (String)paramMessage.obj;
    if ((SmileyGrid.f(this.flT.flM) == null) || (str == null) || (!SmileyGrid.f(this.flT.flM).equals(str)))
      return;
    al.a(SmileyGrid.arw(), "");
    al.c(SmileyGrid.arw());
    this.flT.update();
    SmileyGrid.i(this.flT.flM).put(str, Boolean.valueOf(true));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.an
 * JD-Core Version:    0.6.2
 */