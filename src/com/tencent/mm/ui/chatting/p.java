package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.tencent.mm.j.b;
import com.tencent.mm.pluginsdk.ag;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.model.app.aa;
import com.tencent.mm.pluginsdk.model.app.ap;

final class p
  implements DialogInterface.OnClickListener
{
  p(n paramn, b paramb, String paramString, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    aa localaa = new aa(2, new ap(this.gKv.appId, 0, "0"));
    n.a(this.gKy, localaa);
    ag localag = h.apq();
    if (localag != null)
    {
      n.a(this.gKy);
      localag.a(this.gKw, this.gKv.appId, this.gKv.type, this.gKx, this.gKv.mediaTagName, 2);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.p
 * JD-Core Version:    0.6.2
 */