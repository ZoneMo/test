package com.tencent.mm.compatible.loader;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build.VERSION;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class g
{
  public static e cfe;
  public static PluginResourceLoader cff;
  private static String cfh;
  private static String cfi;
  private static String cfj;
  private static Map cfk;
  private static String cfl = null;

  private static void G(Context paramContext)
  {
    if (cfk != null);
    while (true)
    {
      return;
      Map localMap;
      try
      {
        String str = cj.b(paramContext.getAssets().open("preload/libraries.ini"));
        localMap = u.sy(str);
        aa.f("MicroMsg.PluginClassLoader", "libraries.ini content\n%s", new Object[] { str });
        if ((localMap == null) || (localMap.size() <= 0))
        {
          aa.e("MicroMsg.PluginClassLoader", "parse libraries.ini failed");
          return;
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.PluginClassLoader", "load preload libraries failed");
        return;
      }
      cfk = new HashMap(localMap.size());
      Iterator localIterator = localMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localEntry.getKey();
        arrayOfObject[1] = localEntry.getValue();
        aa.e("MicroMsg.PluginClassLoader", "preload file, plugin=%s, md5=%s", arrayOfObject);
        cfk.put(localEntry.getKey(), localEntry.getValue());
      }
    }
  }

  @TargetApi(9)
  public static void a(Application paramApplication)
  {
    try
    {
      if (Build.VERSION.SDK_INT >= 9)
      {
        cfl = paramApplication.getApplicationInfo().nativeLibraryDir;
        str1 = al.azr() + ".plugin.";
        cfh = paramApplication.getDir("cache", 0).getAbsolutePath();
        cfi = paramApplication.getDir("dex", 0).getAbsolutePath();
        cfj = paramApplication.getDir("lib", 0).getAbsolutePath();
        str2 = "mBase";
        str3 = "mPackageInfo";
        str4 = "mClassLoader";
        str5 = "mResources";
      }
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          String str1;
          String str2;
          String str3;
          String str4;
          String str5;
          if (!cj.hX(s.ceN.ceo))
          {
            str2 = s.ceN.ceo;
            aa.e("MicroMsg.PluginClassLoader", "mBase %s ", new Object[] { str2 });
          }
          String str6 = str2;
          if (!cj.hX(s.ceN.cep))
          {
            str3 = s.ceN.cep;
            aa.e("MicroMsg.PluginClassLoader", "defPackageInfo %s ", new Object[] { str3 });
          }
          String str7 = str3;
          if (!cj.hX(s.ceN.ceq))
          {
            str4 = s.ceN.ceq;
            aa.e("MicroMsg.PluginClassLoader", "defClassLoader %s ", new Object[] { str4 });
          }
          String str8 = str4;
          if (!cj.hX(s.ceN.cer))
          {
            str5 = s.ceN.cer;
            aa.e("MicroMsg.PluginClassLoader", "defResources %s ", new Object[] { str5 });
          }
          String str9 = str5;
          Object localObject = new d((Context)new d(paramApplication, str6, null).get(), str7, null).get();
          d locald1 = new d(localObject, str8, null);
          cfe = new e((ClassLoader)locald1.get(), str1, (byte)0);
          locald1.set(cfe);
          d locald2 = new d(localObject, str9, Resources.class.getName());
          cff = new PluginResourceLoader((Resources)locald2.get());
          locald2.set(cff);
          if (cfe == null)
            aa.aM("MicroMsg.PluginClassLoader", "init multi class loader error");
          return;
          cfl = paramApplication.getApplicationInfo().dataDir + "/lib";
        }
        localException1 = localException1;
        aa.e("MicroMsg.PluginClassLoader", "locate system native library dir failed");
      }
      catch (Exception localException2)
      {
        while (true)
        {
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = localException2.getMessage();
          aa.b("MicroMsg.PluginClassLoader", "init loader failed :%s", arrayOfObject);
        }
      }
    }
  }

  public static String l(Context paramContext, String paramString)
  {
    long l = cj.FD();
    G(paramContext);
    if (cfk == null)
    {
      aa.e("MicroMsg.PluginClassLoader", "extractVoipDex preload so files loaded failed");
      return null;
    }
    String str1 = cfj + "/" + paramString;
    String str2 = (String)cfk.get(paramString);
    if (str2 == null)
    {
      aa.w("MicroMsg.PluginClassLoader", "extractVoipDex not in preloadfiles");
      return null;
    }
    File localFile = new File(str1);
    if (localFile.exists())
    {
      String str3 = f.c(localFile);
      if ((str3 != null) && (str3.equalsIgnoreCase(str2)))
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = localFile;
        arrayOfObject2[1] = Long.valueOf(cj.N(l));
        aa.e("MicroMsg.PluginClassLoader", "extractVoipDex: targetFilePath:[%s] time:%d", arrayOfObject2);
        return str1;
      }
      aa.b("MicroMsg.PluginClassLoader", "extractVoipDex target file exists, but md5 check failed, target=%s assets=%s", new Object[] { str3, str2 });
    }
    c.deleteFile(str1);
    if (!com.tencent.mm.sdk.platformtools.m.o(paramContext, "preload/" + paramString, str1))
    {
      aa.aM("MicroMsg.PluginClassLoader", "extractVoipDex  copyAssets failed");
      return null;
    }
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Long.valueOf(cj.N(l));
    arrayOfObject1[1] = paramString;
    arrayOfObject1[2] = str2;
    aa.d("MicroMsg.PluginClassLoader", "extractVoipDex time:%d so:%s md5:%s ", arrayOfObject1);
    return str1;
  }

  public static String m(Context paramContext, String paramString)
  {
    long l = cj.FD();
    if (cj.hX(paramString))
      return null;
    String str1 = e.b(cfe) + paramString;
    String str2 = cfi + "/" + str1 + ".jar";
    G(paramContext);
    if (cfk == null)
    {
      aa.b("MicroMsg.PluginClassLoader", "preload files loaded failed, plugin=%s", new Object[] { paramString });
      return null;
    }
    String str3 = (String)cfk.get(str1 + ".jar");
    if (str3 == null)
    {
      aa.e("MicroMsg.PluginClassLoader", "extract: donot in the preloadfile plugin=%s", new Object[] { paramString });
      return null;
    }
    File localFile1 = new File(cfi);
    if (((!localFile1.exists()) || (!localFile1.isDirectory())) && (!localFile1.mkdirs()))
    {
      aa.aM("MicroMsg.PluginClassLoader", "extract: create target dex directory failed");
      return null;
    }
    File localFile2 = new File(str2);
    if (localFile2.exists())
    {
      String str4 = f.c(localFile2);
      if ((str4 != null) && (str4.equalsIgnoreCase(str3)))
      {
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = localFile2;
        arrayOfObject3[1] = Long.valueOf(cj.N(l));
        aa.e("MicroMsg.PluginClassLoader", "dkstart extractAssetsDexFile: targetFilePath:[%s] time:%d", arrayOfObject3);
        return str2;
      }
      aa.b("MicroMsg.PluginClassLoader", "target file exists, but md5 check failed, target=%s assets=%s", new Object[] { str4, str3 });
    }
    c.deleteFile(str2);
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = ("preload/" + str1);
    arrayOfObject1[1] = str2;
    arrayOfObject1[2] = str3;
    aa.e("MicroMsg.PluginClassLoader", "copy assets from %s to %s, md5=%s", arrayOfObject1);
    if (!com.tencent.mm.sdk.platformtools.m.o(paramContext, "preload/" + str1 + ".jar", str2))
    {
      aa.a("MicroMsg.PluginClassLoader", "extract: copy to target failed, plugin=%s", new Object[] { str1 });
      return null;
    }
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = Long.valueOf(cj.N(l));
    aa.e("MicroMsg.PluginClassLoader", "dkstart extractAssetsDexFile: copyAssets time:%d", arrayOfObject2);
    return str2;
  }

  public static void m(String paramString1, String paramString2)
  {
    long l = cj.FD();
    if (paramString2 == null)
    {
      aa.b("MicroMsg.PluginClassLoader", "addChainLoader add new class loader failed, path:%s tag:%s ", new Object[] { paramString2, paramString1 });
      return;
    }
    if (cfl != null)
      e.a(cfe, new DexClassLoader(paramString2, cfh, cfj + File.pathSeparator + cfl, e.a(cfe)));
    while (true)
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = Long.valueOf(cj.N(l));
      arrayOfObject[1] = Boolean.valueOf(false);
      arrayOfObject[2] = paramString1;
      arrayOfObject[3] = paramString2;
      arrayOfObject[4] = cfl;
      aa.d("MicroMsg.PluginClassLoader", "addChainLoader time:%d WITH_RESOURCE:%b tag:%s path:%s systemLibraryPath:%s", arrayOfObject);
      return;
      e.a(cfe, new DexClassLoader(paramString2, cfh, cfj, e.a(cfe)));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.g
 * JD-Core Version:    0.6.2
 */