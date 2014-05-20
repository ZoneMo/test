package com.tencent.mm.ah;

import com.tencent.mm.sdk.platformtools.aa;

public final class d
{
  public static long b(String paramString, long paramLong)
  {
    long l = 0L;
    if (paramString != null)
    {
      e locale = k.Dx().gH(paramString);
      if (locale != null)
        l = 1L + locale.field_createTime;
    }
    if (l > paramLong * 1000L)
      return l;
    return paramLong * 1000L;
  }

  public static void gF(String paramString)
  {
    aa.d("MicroMsg.FMessageLogic", "clearFMsgAndFConvByTalker, talker = " + paramString);
    boolean bool1 = k.Dy().gE(paramString);
    aa.i("MicroMsg.FMessageLogic", "clearFMsgAndFConvByTalker, delete fconversation, ret = " + bool1);
    boolean bool2 = k.Dx().gE(paramString);
    aa.i("MicroMsg.FMessageLogic", "clearFMsgAndFConvByTalker, delete fmsginfo, ret = " + bool2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ah.d
 * JD-Core Version:    0.6.2
 */