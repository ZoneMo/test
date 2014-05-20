package com.tencent.mm.booter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import com.tencent.mm.model.be;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.d;

public final class al
{
  static long caG = 0L;

  public static void J(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      j("mm_proc_startup", 2);
      return;
    }
    j("push_proc_startup", 1);
  }

  private static void aY(String paramString)
  {
    SharedPreferences localSharedPreferences = com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(paramString, 0);
    String[] arrayOfString = localSharedPreferences.getString("startup_info", "").split("=");
    if ((arrayOfString == null) || (arrayOfString.length == 0))
      return;
    ao localao = new ao();
    if (localao.ba(arrayOfString[(-1 + arrayOfString.length)]))
    {
      localao.caJ = 2;
      arrayOfString[(-1 + arrayOfString.length)] = localao.toString();
    }
    String str = b(arrayOfString);
    aa.e("MicroMsg.ProcessReport", "uerExit new info %s", new Object[] { str });
    localSharedPreferences.edit().putString("startup_info", str).commit();
  }

  private static String b(String[] paramArrayOfString)
  {
    Object localObject = "";
    int i = 1;
    int j = paramArrayOfString.length;
    int k = 0;
    if (k < j)
    {
      String str1 = paramArrayOfString[k];
      if (i != 0)
        i = 0;
      while (true)
      {
        String str2 = (String)localObject + str1;
        k++;
        localObject = str2;
        break;
        localObject = (String)localObject + "=";
      }
    }
    return localObject;
  }

  private static void j(String paramString, int paramInt)
  {
    SharedPreferences localSharedPreferences = com.tencent.mm.sdk.platformtools.al.getContext().getSharedPreferences(paramString, 0);
    String[] arrayOfString = localSharedPreferences.getString("startup_info", "").split("=");
    if ((arrayOfString != null) && (arrayOfString.length > 0))
    {
      ao localao2 = new ao();
      if (localao2.ba(arrayOfString[(-1 + arrayOfString.length)]))
      {
        localao2.caM = Process.myPid();
        arrayOfString[(-1 + arrayOfString.length)] = localao2.toString();
      }
    }
    ao localao1 = new ao();
    localao1.caI = paramInt;
    localao1.caK = Process.myPid();
    localao1.caL = ((int)cj.FC());
    String str1 = b(arrayOfString);
    String str2 = localao1.toString();
    if (str1.length() > 0)
      str2 = str1 + "=" + str2;
    aa.e("MicroMsg.ProcessReport", "startProc new info %s", new Object[] { str2 });
    localSharedPreferences.edit().putString("startup_info", str2).commit();
  }

  public static void oR()
  {
    aY("mm_proc_startup");
    aY("push_proc_startup");
  }

  public static void oS()
  {
    if ((caG != 0L) && (cj.O(caG) < 3600000L))
      return;
    int i = ((Integer)be.us().get(37, Integer.valueOf(0))).intValue();
    if (a.fxr != i)
    {
      be.us().set(37, Integer.valueOf(a.fxr));
      new Handler(Looper.getMainLooper()).post(new am(i));
    }
    caG = cj.FE();
    new Handler(Looper.getMainLooper()).post(new an());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.al
 * JD-Core Version:    0.6.2
 */