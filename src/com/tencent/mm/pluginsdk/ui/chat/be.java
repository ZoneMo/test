package com.tencent.mm.pluginsdk.ui.chat;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.aw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ce;

final class be
  implements View.OnClickListener
{
  be(bd parambd)
  {
  }

  public final void onClick(View paramView)
  {
    aa.d("MicroMsg.SuggestEmoticonBubble", "onClick send emoji...");
    if ((bd.a(this.frj) != null) && (bd.b(this.frj) != null) && (bd.c(this.frj) != null))
    {
      bd.b(this.frj).e(bd.a(this.frj));
      bd.c(this.frj).clear();
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(1);
      arrayOfObject[1] = bd.d(this.frj);
      localm.d(10994, arrayOfObject);
    }
    bd.e(this.frj).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.be
 * JD-Core Version:    0.6.2
 */