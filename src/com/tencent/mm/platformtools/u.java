package com.tencent.mm.platformtools;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.at;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import junit.framework.Assert;

public final class u
{
  private static final String[] cGA = { "libvoipCodec_v7a.so" };
  public static String cGz = "/data/data/com.tencent.mm/AssetsLibs/";

  @TargetApi(9)
  public static void load(String paramString)
  {
    Assert.assertFalse("Lib name is null", cj.hX(paramString));
    String str1;
    try
    {
      System.loadLibrary(paramString);
      return;
    }
    catch (Error localError1)
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = paramString;
      arrayOfObject1[1] = localError1.getMessage();
      str1 = String.format("loadLibrary Load [%s] failed Msg [%s] ", arrayOfObject1);
      if (Build.VERSION.SDK_INT >= 9)
        break label299;
    }
    String str2 = "/data/data/" + al.getContext().getPackageName() + "/lib";
    String str3 = str2 + "/lib" + paramString + ".so";
    String str4 = str1 + "libPath [" + str3 + "] srcPath [" + al.getContext().getApplicationInfo().sourceDir + "] sdcard [" + i.qd() + "] ";
    aa.e("MicroMsg.LoadLibrary", str4);
    File localFile;
    StringBuilder localStringBuilder;
    Object[] arrayOfObject2;
    try
    {
      System.load(str3);
      at.azE().aN("MicroMsg.LoadLibrary_" + str4, "MicroMsg.LoadLibrary");
      return;
    }
    catch (Error localError2)
    {
      localFile = new File(str3);
      localStringBuilder = new StringBuilder().append(str4);
      arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = localError2.getMessage();
      if (!localFile.exists());
    }
    for (long l = localFile.length(); ; l = 0L)
    {
      arrayOfObject2[1] = Long.valueOf(l);
      String str5 = String.format("LoadPath failed Msg [%s] file:[%d]", arrayOfObject2);
      aa.e("MicroMsg.LoadLibrary", str5);
      Assert.assertTrue(str5, false);
      return;
      label299: str2 = al.getContext().getApplicationInfo().nativeLibraryDir;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.u
 * JD-Core Version:    0.6.2
 */