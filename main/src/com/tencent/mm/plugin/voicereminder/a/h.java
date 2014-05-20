package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.c.a.hy;
import com.tencent.mm.c.a.hz;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.storage.ak;

final class h extends g
{
  h(f paramf)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    hy localhy = (hy)parame;
    k localk = k.pl(localhy.bRu.bRv);
    ak localak = localhy.bRu.bLP;
    if (localk != null)
    {
      f localf = (f)be.uh().dN(f.class.getName());
      String str1 = localak.aCl();
      String str2 = localhy.bRu.description;
      int i = localk.ePe;
      String str3 = com.tencent.mm.pluginsdk.e.e.e(al.getContext(), i);
      String str4 = "";
      if ((str3 != null) && (str3.length() > 0))
      {
        String[] arrayOfString = str3.split(";");
        str4 = str4 + arrayOfString[0];
        if (arrayOfString.length > 1)
          str4 = str4 + arrayOfString[1];
      }
      if (str2 != null)
        str4 = str4 + str2;
      localf.d(str1, str4, localak.DL());
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.h
 * JD-Core Version:    0.6.2
 */