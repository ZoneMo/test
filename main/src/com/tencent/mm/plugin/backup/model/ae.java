package com.tencent.mm.plugin.backup.model;

import android.text.TextUtils;
import com.tencent.mm.a.c;
import com.tencent.mm.plugin.backup.c.a;
import com.tencent.mm.pluginsdk.h;
import com.tencent.mm.pluginsdk.i;
import com.tencent.mm.protocal.a.rw;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ab;
import com.tencent.mm.storage.ac;
import com.tencent.mm.storage.ak;
import com.tencent.mm.storage.e;
import java.io.File;
import java.util.LinkedList;
import java.util.Map;

public final class ae
  implements y
{
  private static boolean iq(String paramString)
  {
    int i = paramString.indexOf('<');
    if (i > 0)
      paramString = paramString.substring(i);
    return com.tencent.mm.sdk.platformtools.u.aL(paramString, "msg") != null;
  }

  public final int a(com.tencent.mm.protocal.a.ae paramae, boolean paramBoolean, ak paramak, LinkedList paramLinkedList)
  {
    int i;
    String str1;
    if (cj.hX(paramak.getContent()))
    {
      i = 0;
      str1 = com.tencent.mm.storage.u.uk(paramak.getContent()).aAU().trim();
      if (!iq(str1))
      {
        str1 = paramak.getContent();
        if (!iq(str1))
        {
          str1 = w.a(paramak, paramae);
          if ((paramak.rO() != 1) && (a.cp(paramak.aCl())))
            str1 = paramak.aCl() + " :\n " + str1;
        }
      }
      if ((str1 != null) && (iq(str1)))
        break label158;
      aa.d("MicroMsg.MMBakEmoji", "emoji error" + str1);
      i = -1;
    }
    label158: com.tencent.mm.storage.y localy;
    label360: 
    do
      while (true)
      {
        return i;
        i = paramak.getContent().getBytes().length;
        break;
        rw localrw = new rw();
        localrw.sn(cj.R(str1, ""));
        paramae.fzv = localrw;
        localy = d.Gj().HC().uF(paramak.ot());
        if ((localy == null) || (!localy.aBB()))
        {
          if (localy != null)
          {
            if (!TextUtils.isEmpty(localy.aBK()))
              break label360;
            String str6 = d.Gj().sJ();
            String str7 = str6 + localy.yK() + "_thumb";
            if (c.ar(str7) < 0)
              return -1;
            i += r.a(str7, paramae, paramLinkedList, 4, paramBoolean);
          }
          while (localy != null)
          {
            if ((!TextUtils.isEmpty(localy.aBK())) || (!localy.aBy()))
              break label440;
            String str3 = d.Gj().sJ();
            return i + r.a(str3 + localy.yK(), paramae, paramLinkedList, 5, paramBoolean);
            String str4 = d.Gj().sJ();
            String str5 = str4 + localy.aBK() + File.separator + localy.yK() + "_cover";
            if (c.ar(str5) < 0)
              return -1;
            i += r.a(str5, paramae, paramLinkedList, 4, paramBoolean);
          }
        }
      }
    while (!localy.aBz());
    label440: String str2 = d.Gj().sJ();
    return i + r.a(str2 + localy.aBK() + File.separator + localy.yK(), paramae, paramLinkedList, 5, paramBoolean);
  }

  public final int a(String paramString, com.tencent.mm.protocal.a.ae paramae, ak paramak)
  {
    paramak.setContent(paramae.fzv.getString());
    String str1 = paramae.fzs.getString();
    String str2 = paramae.fzt.getString();
    if (((String)d.Gj().sr().get(2)).equals(str1));
    Map localMap;
    ac localac;
    for (String str3 = str2; ; str3 = str1)
    {
      String str4 = paramae.fzv.getString();
      localMap = com.tencent.mm.sdk.platformtools.u.aL(str4, "msg");
      localac = h.apj().W(str4, str3);
      if (localac != null)
        break;
      aa.w("MicroMsg.MMBakEmoji", "EmojiMsgInfo is null");
      return -1;
    }
    com.tencent.mm.storage.y localy1 = h.apj().ja(localac.bPX);
    if (localy1 == null)
    {
      aa.w("MicroMsg.MMBakEmoji", "EmojiInfo is null");
      return -1;
    }
    if (localMap.get(".msg.emoji.$androidmd5") == null)
    {
      String str8 = w.ix(localac.bPX);
      if (!cj.hX(str8))
      {
        localac.bPX = str8;
        aa.e("MicroMsg.MMBakEmoji", "convert ip to android md5 %s", new Object[] { str8 });
      }
    }
    String str5 = (String)localMap.get(".msg.emoji.$productid");
    if (!TextUtils.isEmpty(str5))
      localac.bPE = str5;
    paramak.setType(47);
    paramak.uN(localac.bPX);
    String str6 = localac.cAP;
    boolean bool;
    String str7;
    if ((localy1 != null) && (!localy1.apQ()) && (!localy1.aBC()))
    {
      bool = true;
      paramak.setContent(com.tencent.mm.storage.u.a(str6, 0L, bool));
      if ((localy1 == null) || (!localy1.aBy()))
      {
        str7 = d.Gj().sJ();
        if (!TextUtils.isEmpty(str5))
          break label501;
        r.a(paramae, 4, str7 + localac.bPX + "_thumb");
        r.a(paramae, 5, str7 + localac.bPX);
      }
    }
    while (true)
    {
      com.tencent.mm.storage.y localy2 = new com.tencent.mm.storage.y(str7);
      localy2.eX(localac.bPX);
      localy2.ux(localac.id);
      localy2.mb(com.tencent.mm.storage.y.ggZ);
      localy2.setType(localac.ghB);
      localy2.setSize(localac.ghC);
      localy2.setState(com.tencent.mm.storage.y.ght);
      if (!TextUtils.isEmpty(str5))
        localy2.uA(str5);
      d.Gj().HC().a(localy2);
      long l = a.d(paramak);
      aa.d("MicroMsg.MMBakEmoji", "id " + l);
      return 0;
      bool = false;
      break;
      label501: File localFile = new File(str7 + str5);
      if (!localFile.exists())
        localFile.mkdirs();
      r.a(paramae, 4, str7 + str5 + File.separator + localac.bPX + "_cover");
      r.a(paramae, 5, str7 + str5 + File.separator + localac.bPX);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.ae
 * JD-Core Version:    0.6.2
 */