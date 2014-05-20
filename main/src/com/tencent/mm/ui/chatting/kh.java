package com.tencent.mm.ui.chatting;

import com.tencent.mm.a.c;
import com.tencent.mm.pluginsdk.model.app.a;
import com.tencent.mm.pluginsdk.model.app.ba;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.g;

public final class kh
{
  public static String a(ak paramak, com.tencent.mm.j.b paramb)
  {
    String str = "";
    if ((paramb != null) && (!cj.hX(paramb.cgE)))
    {
      a locala = ba.HF().qk(paramb.cgE);
      if ((locala != null) && (locala.vN()) && (c.as(locala.field_fileFullPath)))
        str = locala.field_fileFullPath;
    }
    if (!cj.hX(str))
    {
      aa.e("MicroMsg.HistoryExportUtil", "get hd appmsg image path ok, %s", new Object[] { str });
      return str;
    }
    if (paramak != null)
      str = ag.Ba().fX(paramak.field_imgPath);
    aa.e("MicroMsg.HistoryExportUtil", "try get thumb appmsg image path finish, %s", new Object[] { str });
    return str;
  }

  private static String d(e parame)
  {
    if (parame != null)
    {
      String str2;
      if (parame.AM())
      {
        str2 = parame.AI();
        if ((str2 == null) || (!c.as(str2)));
      }
      do
      {
        do
        {
          return str2;
          String str1 = parame.AI();
          str2 = ag.Ba().j(str1, null, null);
        }
        while ((str2 != null) && (c.as(str2)));
        String str3 = parame.AJ();
        str2 = ag.Ba().j(str3, null, null);
      }
      while ((str2 != null) && (c.as(str2)));
    }
    return null;
  }

  public static String nG(int paramInt)
  {
    e locale = ag.Ba().dG(paramInt);
    if (locale != null)
    {
      String str = d(locale);
      if (str != null)
        return str;
    }
    return null;
  }

  public static String nH(int paramInt)
  {
    e locale = ag.Ba().dF(paramInt);
    if (locale != null)
    {
      String str = d(locale);
      if (str != null)
        return str;
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.kh
 * JD-Core Version:    0.6.2
 */