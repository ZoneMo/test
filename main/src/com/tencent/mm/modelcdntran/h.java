package com.tencent.mm.modelcdntran;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.tencent.mm.a.f;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;

public final class h
{
  public static int cpm = 1;
  public static int cpn = 2;
  public static int cpo = 3;
  public static int cpp = -1;
  public static int cpq = 3;
  public static int cpr = 4;
  public static int cps = 5;
  public static int cpt = 1;
  public static int cpu = 2;
  public static int cpv = -10001;
  public static int cpw = -10002;
  public static int cpx = -10003;
  public static int cpy = -10004;

  public static int L(Context paramContext)
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return cpm;
      if (localNetworkInfo.getType() == 1)
        return cpo;
      if (localNetworkInfo.getSubtype() == 1)
        return cpm;
      if (localNetworkInfo.getSubtype() == 2)
        return cpm;
      if (localNetworkInfo.getSubtype() >= 3)
        return cpn;
      int i = cpm;
      return i;
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    return cpm;
  }

  public static int M(Context paramContext)
  {
    int i = ba.aK(paramContext);
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return cpp;
    if (localNetworkInfo.getType() == 1)
      return cpt;
    if ((localNetworkInfo.getSubtype() == 1) || (localNetworkInfo.getSubtype() == 2))
      return cpq;
    if (localNetworkInfo.getSubtype() >= 3)
      return cpr;
    if (localNetworkInfo.getSubtype() >= 13)
      return cps;
    if (ba.lI(i))
      return cpu;
    return cpq;
  }

  public static String a(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    Object[] arrayOfObject = new Object[5];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = Long.valueOf(paramLong);
    arrayOfObject[2] = paramString2;
    arrayOfObject[3] = paramString3;
    arrayOfObject[4] = cj.azV();
    aa.e("MciroMsg.CdnUtil", "cdntra genClientId prefix[%s] createtime:%d talker[%s] suffix:[%s] stack[%s]", arrayOfObject);
    boolean bool1 = cj.hX(eV(paramString1));
    String str1 = null;
    if (bool1);
    String str2;
    do
    {
      boolean bool3;
      do
      {
        boolean bool2;
        do
        {
          return str1;
          bool2 = cj.hX(paramString2);
          str1 = null;
        }
        while (bool2);
        bool3 = paramLong < 0L;
        str1 = null;
      }
      while (!bool3);
      str2 = cj.hW(eV(paramString3));
      String str3 = f.h((v.th() + "-" + paramString2).getBytes());
      str1 = "a" + paramString1 + "_" + str3.substring(0, 16) + "_" + paramLong;
    }
    while (cj.hX(str2));
    return str1 + "_" + str2;
  }

  public static void a(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    if (cj.A(paramArrayOfByte))
      paramArrayOfByte = new byte[0];
    String str = new String(paramArrayOfByte);
    if (paramInt == 4)
      aa.e(paramString, str);
    do
    {
      return;
      if (paramInt == 3)
      {
        aa.w(paramString, str);
        return;
      }
      if (paramInt == 2)
      {
        aa.i(paramString, str);
        return;
      }
      if (paramInt == 1)
      {
        aa.d(paramString, str);
        return;
      }
    }
    while (paramInt != 0);
    aa.v(paramString, str);
  }

  private static String eV(String paramString)
  {
    if (!cj.hX(paramString));
    for (int i = 0; ; i++)
      if (i < paramString.length())
      {
        char c = paramString.charAt(i);
        if ((!cj.m(c)) && (!cj.n(c)))
          paramString = null;
      }
      else
      {
        return paramString;
      }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.h
 * JD-Core Version:    0.6.2
 */