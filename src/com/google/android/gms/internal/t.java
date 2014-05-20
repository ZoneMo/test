package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Field;

public abstract class t
  implements SafeParcelable
{
  private static final Object QV = new Object();
  private static ClassLoader QW = null;
  private static Integer QX = null;
  private boolean QY = false;

  protected static boolean Z(String paramString)
  {
    ClassLoader localClassLoader = le();
    if (localClassLoader == null)
      return true;
    try
    {
      boolean bool = b(localClassLoader.loadClass(paramString));
      return bool;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private static boolean b(Class paramClass)
  {
    try
    {
      boolean bool = "SAFE_PARCELABLE_NULL_STRING".equals(paramClass.getField("NULL").get(null));
      return bool;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      return false;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
    }
    return false;
  }

  private static ClassLoader le()
  {
    synchronized (QV)
    {
      ClassLoader localClassLoader = QW;
      return localClassLoader;
    }
  }

  protected static Integer lf()
  {
    synchronized (QV)
    {
      Integer localInteger = QX;
      return localInteger;
    }
  }

  protected final boolean lg()
  {
    return this.QY;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.t
 * JD-Core Version:    0.6.2
 */