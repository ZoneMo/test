package com.tencent.mm.ui.transmit;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.c.a.x;
import com.tencent.mm.c.a.y;
import com.tencent.mm.c.a.z;
import com.tencent.mm.pluginsdk.model.b;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.ui.base.h;

final class m
  implements View.OnClickListener
{
  m(MulSelectConversationUI paramMulSelectConversationUI)
  {
  }

  public final void onClick(View paramView)
  {
    x localx = new x();
    if ((b.a(localx, 6, MulSelectConversationUI.a(this.hrJ))) && (localx.bMm.ret == 0))
    {
      a.ayH().f(localx);
      h.an(this.hrJ.aal(), this.hrJ.getString(2131167821));
    }
    while (true)
    {
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Integer.valueOf(3);
      arrayOfObject[1] = Integer.valueOf(0);
      arrayOfObject[2] = Integer.valueOf(0);
      localm.d(11048, arrayOfObject);
      this.hrJ.finish();
      return;
      h.c(this.hrJ.aal(), localx.bMl.type, 2131167946);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.transmit.m
 * JD-Core Version:    0.6.2
 */