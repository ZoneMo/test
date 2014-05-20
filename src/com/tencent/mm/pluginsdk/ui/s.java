package com.tencent.mm.pluginsdk.ui;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.n;
import com.tencent.mm.platformtools.k;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.base.v;

final class s
  implements v
{
  s(r paramr)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    String str = h.cfG + "hdImg_" + f.h(GetHdHeadImageGalleryView.c(this.fkZ.fkW).getBytes()) + ".jpg";
    c.deleteFile(str);
    m.aK(GetHdHeadImageGalleryView.b(this.fkZ.fkW), str);
    k.d(str, this.fkZ.fkW.getContext());
    Context localContext1 = this.fkZ.fkW.getContext();
    Context localContext2 = this.fkZ.fkW.getContext();
    int i = n.boK;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = h.cfG;
    Toast.makeText(localContext1, localContext2.getString(i, arrayOfObject), 1).show();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.s
 * JD-Core Version:    0.6.2
 */