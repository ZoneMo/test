package com.tencent.mm.ah;

import com.tencent.mm.c.a.br;
import com.tencent.mm.c.a.bs;
import com.tencent.mm.sdk.b.g;

final class r extends g
{
  r(k paramk)
  {
  }

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    br localbr = (br)parame;
    int i = localbr.bNu.bNw;
    String str = localbr.bNu.username;
    long l = localbr.bNu.bNx;
    e locale = new e();
    if (i == 1)
    {
      k.Dx().b(l, locale);
      if ((locale.field_talker == null) || (locale.field_talker.equals("")))
        break label145;
      localbr.bNv.bNy = locale.field_msgContent;
      localbr.bNv.bNl = locale.field_talker;
      localbr.bNv.bNz = locale.field_isSend;
    }
    for (localbr.bNv.type = locale.field_type; ; localbr.bNv.type = -1)
    {
      return false;
      if (i != 2)
        break;
      locale = k.Dx().gI(str);
      break;
      label145: localbr.bNv.bNy = "";
      localbr.bNv.bNl = "";
      localbr.bNv.bNz = -1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.r
 * JD-Core Version:    0.6.2
 */