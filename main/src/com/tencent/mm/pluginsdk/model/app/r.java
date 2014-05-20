package com.tencent.mm.pluginsdk.model.app;

import com.tencent.mm.j.a;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;

public final class r extends ah
{
  public static final String[] cjC = arrayOfString;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(a.cfX, "AppMessage");
  }

  public r(af paramaf)
  {
    super(paramaf, a.cfX, "AppMessage", null);
  }

  public final a bt(long paramLong)
  {
    a locala = new a();
    locala.field_msgId = paramLong;
    if (super.c(locala, new String[0]))
      return locala;
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.r
 * JD-Core Version:    0.6.2
 */