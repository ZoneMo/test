package com.tencent.mm.m;

import android.graphics.Bitmap;
import com.tencent.mm.a.j;
import com.tencent.mm.as.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.protocal.a.ob;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;

public final class c
{
  public static Bitmap a(String paramString, boolean paramBoolean, int paramInt)
  {
    if ((cj.hX(paramString)) || (be.uz().sd() == 0))
      return null;
    if (!be.uz().isSDCardAvailable())
      return af.vJ().K(al.getContext());
    if (i.tC(paramString))
      paramString = i.tE(paramString);
    return af.wo().b(paramString, paramBoolean, paramInt);
  }

  public static x a(String paramString, ob paramob)
  {
    x localx = new x();
    localx.cL(-1);
    localx.setUsername(paramString);
    localx.ep(paramob.fDh);
    localx.eo(paramob.fDg);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = localx.getUsername();
    arrayOfObject[1] = localx.vV();
    arrayOfObject[2] = localx.vW();
    aa.e("MicroMsg.AvatarLogic", "dkhurl contact %s b[%s] s[%s]", arrayOfObject);
    boolean bool;
    if (paramob.fOZ != 0)
    {
      bool = true;
      localx.Q(bool);
      if ((paramob.fOT != 3) && (paramob.fOT != 4))
        break label116;
      localx.bU(paramob.fOT);
    }
    label116: 
    do
    {
      do
      {
        return localx;
        bool = false;
        break;
      }
      while (paramob.fOT != 2);
      localx.bU(3);
    }
    while (v.th().equals(paramString));
    af.vJ().i(paramString, false);
    af.vJ().i(paramString, true);
    af.wo().dY(paramString);
    be.uz().sT().a(new com.tencent.mm.as.d(1001, paramString));
    return localx;
  }

  public static boolean c(long paramLong, int paramInt)
  {
    if (paramInt != 3)
      return false;
    return dV(s(paramLong));
  }

  public static Bitmap dP(String paramString)
  {
    return a(paramString + "@google", false, -1);
  }

  private static String dQ(String paramString)
  {
    return "http://graph.facebook.com/" + paramString + "/picture";
  }

  public static void dR(String paramString)
  {
    if (cj.hX(paramString));
    String str;
    x localx;
    do
    {
      return;
      str = paramString + "@fb";
      localx = af.wm().eq(str);
    }
    while ((localx != null) && (str.equals(localx.getUsername())) && (3 == localx.rz()));
    if (localx == null)
      localx = new x();
    localx.setUsername(str);
    localx.bU(3);
    localx.eo(dQ(paramString));
    localx.ep(dQ(paramString));
    localx.Q(true);
    localx.cL(31);
    af.wm().a(localx);
  }

  public static Bitmap dS(String paramString)
  {
    return a(paramString + "@fb", false, -1);
  }

  public static long dT(String paramString)
  {
    if (!i.tB(paramString))
      return -1L;
    String[] arrayOfString = paramString.split("@");
    try
    {
      long l = Long.parseLong(arrayOfString[0]);
      return l;
    }
    catch (Exception localException)
    {
    }
    return -1L;
  }

  public static long dU(String paramString)
  {
    if (!i.tA(paramString))
      return -1L;
    String[] arrayOfString = paramString.split("@");
    try
    {
      long l = Long.parseLong(arrayOfString[0]);
      return l;
    }
    catch (Exception localException)
    {
    }
    return -1L;
  }

  public static boolean dV(String paramString)
  {
    if (paramString == null)
    {
      aa.w("MicroMsg.AvatarLogic", "setQQAvatarImgFlag failed : invalid username");
      return false;
    }
    if (!paramString.endsWith("@qqim"))
    {
      aa.w("MicroMsg.AvatarLogic", "setQQAvatarImgFlag failed : invalid username");
      return false;
    }
    x localx = new x();
    localx.setUsername(paramString);
    localx.bU(3);
    localx.cL(3);
    return af.wm().a(localx);
  }

  public static String dW(String paramString)
  {
    if ((cj.hX(paramString)) || (be.uz().sd() == 0));
    while (!be.uz().isSDCardAvailable())
      return null;
    if (i.tC(paramString))
      return af.vJ().h(i.tE(paramString), false);
    return af.vJ().h(paramString, false);
  }

  public static void dX(String paramString)
  {
    x localx = af.wm().eq(paramString);
    if (localx == null);
    while (!paramString.equals(localx.getUsername()))
      return;
    localx.vX();
    localx.cL(64);
    af.wm().a(localx);
  }

  public static Bitmap k(String paramString, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap;
    if ((cj.hX(paramString)) || (be.uz().sd() == 0))
      localBitmap = null;
    do
    {
      return localBitmap;
      localBitmap = af.vJ().l(paramString, paramInt1, paramInt2);
    }
    while (localBitmap != null);
    s locals = new s();
    locals.a(paramString, new d(locals));
    return a(paramString, false, 1);
  }

  public static boolean p(String paramString, int paramInt)
  {
    if (cj.hX(paramString))
      return false;
    x localx = af.wm().eq(paramString);
    if ((localx != null) && (paramString.equals(localx.getUsername())) && (paramInt == localx.rz()))
      return true;
    if (localx == null)
      localx = new x();
    localx.setUsername(paramString);
    localx.bU(paramInt);
    localx.cL(3);
    return af.wm().a(localx);
  }

  private static String s(long paramLong)
  {
    return new j(paramLong) + "@qqim";
  }

  public static Bitmap t(long paramLong)
  {
    return a(s(paramLong), false, -1);
  }

  public static String x(String paramString1, String paramString2)
  {
    return paramString1 + "?access_token=" + paramString2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.c
 * JD-Core Version:    0.6.2
 */