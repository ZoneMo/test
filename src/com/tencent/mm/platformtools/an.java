package com.tencent.mm.platformtools;

import com.tencent.mm.am.b;
import com.tencent.mm.protocal.a.rv;
import com.tencent.mm.protocal.a.rw;

public final class an
{
  public static String a(rw paramrw)
  {
    if (paramrw == null)
      return null;
    return paramrw.getString();
  }

  public static String a(rw paramrw, String paramString)
  {
    if (paramrw == null)
      return paramString;
    return paramrw.getString();
  }

  public static byte[] a(rv paramrv)
  {
    if ((paramrv == null) || (paramrv.ayh() == null))
      return null;
    return paramrv.ayh().toByteArray();
  }

  public static byte[] a(rv paramrv, byte[] paramArrayOfByte)
  {
    if ((paramrv == null) || (paramrv.ayh() == null))
      return paramArrayOfByte;
    return paramrv.ayh().toByteArray();
  }

  public static String b(rv paramrv)
  {
    if ((paramrv == null) || (paramrv.ayh() == null))
      return null;
    return paramrv.ayh().avA();
  }

  public static rw hQ(String paramString)
  {
    if (paramString == null)
      return null;
    rw localrw = new rw();
    localrw.sn(paramString);
    return localrw;
  }

  public static rv y(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    rv localrv = new rv();
    localrv.bM(paramArrayOfByte);
    return localrv;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.an
 * JD-Core Version:    0.6.2
 */