package com.tencent.mm.pluginsdk.ui.tools;

import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.pluginsdk.ui.bh;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.tools.ActionBarSearchView;

final class v
  implements bh
{
  v(u paramu)
  {
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    arrayOfObject[1] = Long.valueOf(paramLong);
    aa.e("MicroMsg.VoiceSearchViewHelper", "on voice search return, success %B, voice id %d", arrayOfObject);
    if (u.b(this.fuH) != null)
      u.b(this.fuH).a(paramBoolean, paramArrayOfString, paramLong, u.f(this.fuH));
  }

  public final void arT()
  {
    aa.d("MicroMsg.VoiceSearchViewHelper", "on voice search start");
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(u.a(this.fuH));
    arrayOfObject[1] = Integer.valueOf(3);
    localm.d(10453, arrayOfObject);
    if (u.b(this.fuH) != null)
      u.b(this.fuH).abb();
  }

  public final void arU()
  {
    aa.d("MicroMsg.VoiceSearchViewHelper", "on voice search cancel");
    m localm = m.dZN;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(u.a(this.fuH));
    arrayOfObject[1] = Integer.valueOf(4);
    localm.d(10453, arrayOfObject);
    if (u.c(this.fuH) != null)
    {
      u.d(this.fuH).ek(true);
      u.e(this.fuH).el(true);
    }
    if (u.b(this.fuH) != null)
      u.b(this.fuH).abc();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.v
 * JD-Core Version:    0.6.2
 */