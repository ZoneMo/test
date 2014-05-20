package com.tencent.mm.pluginsdk.ui;

import android.graphics.Bitmap;
import com.tencent.mm.as.a;
import com.tencent.mm.as.d;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.m.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class v
  implements com.tencent.mm.m.u
{
  v(u paramu, Bitmap paramBitmap)
  {
  }

  public final int E(int paramInt1, int paramInt2)
  {
    u.a(this.flj).vM();
    be.uz().sT().a(new d(1003, u.b(this.flj) + ";" + paramInt1 + ";" + paramInt2));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.GetHdHeadImg", "onSceneEnd: errType=%d, errCode=%d", arrayOfObject);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      Bitmap localBitmap = af.vJ().eg(u.b(this.flj));
      if (localBitmap != null)
      {
        u.a(this.flj, localBitmap, af.vJ().h(u.b(this.flj), true));
        if (u.c(this.flj) != null)
        {
          u.c(this.flj);
          u.b(this.flj);
        }
      }
    }
    do
    {
      return 0;
      u.a(this.flj, this.fli, null);
      break;
      u.a(this.flj, this.fli, null);
    }
    while (u.c(this.flj) == null);
    u.c(this.flj);
    u.b(this.flj);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.v
 * JD-Core Version:    0.6.2
 */