package com.tencent.mm.compatible.loader;

import android.os.Build;
import android.os.Build.VERSION;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.lang.reflect.Field;

public final class e extends ClassLoader
{
  private static final String cfb = "lib/" + Build.CPU_ABI;
  private static String cfc;
  private static String cfd = null;
  private ClassLoader ceZ;
  private final String cfa;

  static
  {
    if (Build.VERSION.SDK_INT >= 8)
      new f().run();
    while ((cfb.contains("armeabi")) || (cfc.contains("armeabi")))
    {
      cfd = "lib/armeabi";
      return;
      cfc = "lib/armeabi";
    }
  }

  private e(ClassLoader paramClassLoader, String paramString)
  {
    super(paramClassLoader.getParent());
    this.cfa = paramString;
    this.ceZ = paramClassLoader;
  }

  public static void pZ()
  {
    try
    {
      Field localField6 = g.cff.cfm.getClass().getDeclaredField("mDrawableCache");
      localField6.setAccessible(true);
      ((LongSparseArray)localField6.get(g.cff.cfm)).clear();
      try
      {
        label39: Field localField5 = g.cff.cfm.getClass().getDeclaredField("mColorStateListCache");
        localField5.setAccessible(true);
        localObject = localField5.get(g.cff.cfm);
        if ((localObject instanceof SparseArray))
          ((SparseArray)localObject).clear();
      }
      catch (Exception localException3)
      {
        try
        {
          Field localField3 = g.cff.cfm.getClass().getDeclaredField("sPreloadedDrawables");
          localField3.setAccessible(true);
          ((LongSparseArray)localField3.get(g.cff.cfm)).clear();
          String str = "mPreloadedColorStateLists";
          if (Build.VERSION.SDK_INT >= 16)
            str = "sPreloadedColorStateLists";
          localField4 = g.cff.cfm.getClass().getDeclaredField(str);
          localField4.setAccessible(true);
          if ((localField4.get(g.cff.cfm) instanceof SparseArray))
            ((SparseArray)localField4.get(g.cff.cfm)).clear();
        }
        catch (Exception localException3)
        {
          try
          {
            while (true)
            {
              Object localObject;
              Field localField4;
              if (Build.VERSION.SDK_INT >= 16)
              {
                Field localField1 = g.cff.cfm.getClass().getDeclaredField("mColorDrawableCache");
                localField1.setAccessible(true);
                ((LongSparseArray)localField1.get(g.cff.cfm)).clear();
                Field localField2 = g.cff.cfm.getClass().getDeclaredField("sPreloadedColorDrawables");
                localField2.setAccessible(true);
                ((LongSparseArray)localField2.get(g.cff.cfm)).clear();
              }
              return;
              ((LongSparseArray)localObject).clear();
              continue;
              localException2 = localException2;
              continue;
              ((LongSparseArray)localField4.get(g.cff.cfm)).clear();
              continue;
              localException3 = localException3;
            }
          }
          catch (Exception localException4)
          {
          }
        }
      }
    }
    catch (Exception localException1)
    {
      break label39;
    }
  }

  protected final Class findClass(String paramString)
  {
    return this.ceZ.loadClass(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.loader.e
 * JD-Core Version:    0.6.2
 */