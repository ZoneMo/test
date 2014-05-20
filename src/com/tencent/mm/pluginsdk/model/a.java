package com.tencent.mm.pluginsdk.model;

import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.bv;
import com.tencent.mm.model.v;
import com.tencent.mm.n.j;
import com.tencent.mm.n.k;
import com.tencent.mm.platformtools.an;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.protocal.a.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.e;

public final class a
  implements j
{
  public final k a(l paraml)
  {
    if ((paraml == null) || (paraml.fzu != 47))
      aa.aM("MicroMsg.EmojiExtension", "parseEmojiMsg failed, invalid cmdAM");
    String str1;
    String str3;
    String str4;
    do
    {
      return null;
      str1 = an.a(paraml.fzs);
      String str2 = an.a(paraml.fzt);
      if (!((String)be.uz().sr().get(2)).equals(str1))
        break;
      str3 = str2;
      str4 = an.a(paraml.fzv);
    }
    while (h.apj().g(str3, str4, paraml.fzo));
    aa.w("MicroMsg.EmojiExtension", "emoji plugin not found");
    ak localak = new ak();
    localak.setType(47);
    localak.uK(str3);
    if (v.cm(str1));
    for (int i = 1; ; i = 0)
    {
      localak.bZ(i);
      localak.uN("no_plugin_md5");
      localak.dA(paraml.fzo);
      localak.setContent(str4);
      localak.G(bv.dA(localak.aCl()));
      localak.setStatus(3);
      be.uz().sw().v(localak);
      return null;
      str3 = str1;
      break;
    }
  }

  public final void c(ak paramak)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.a
 * JD-Core Version:    0.6.2
 */