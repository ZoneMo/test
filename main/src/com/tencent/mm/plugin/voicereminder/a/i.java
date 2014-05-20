package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.c.a.hw;
import com.tencent.mm.c.a.hx;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.b.g;
import java.io.File;

final class i extends g
{
  i(f paramf)
  {
  }

  public final boolean a(e parame)
  {
    String str1 = ((hw)parame).bRs.bRt;
    if (str1 != null)
    {
      String str2 = n.B(str1, false);
      if (!au.hX(str2))
        f.ali().hz(str2);
      f.ali().hy(str1);
      new File(str1).delete();
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.i
 * JD-Core Version:    0.6.2
 */