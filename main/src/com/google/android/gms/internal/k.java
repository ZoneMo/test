package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;

public final class k
{
  private static Context LB;
  private static d LD;

  public static View a(Context paramContext, int paramInt1, int paramInt2)
  {
    d locald = k(paramContext);
    try
    {
      an localan = locald.a(as.O(paramContext), paramInt1, paramInt2);
      return (View)as.a(localan);
    }
    catch (Exception localException)
    {
    }
    throw new m("Could not get button with size " + paramInt1 + " and color " + paramInt2);
  }

  private static d k(Context paramContext)
  {
    i.M(paramContext);
    ClassLoader localClassLoader;
    if (LD == null)
    {
      if (LB == null)
      {
        Context localContext = com.google.android.gms.common.e.j(paramContext);
        LB = localContext;
        if (localContext == null)
          throw new m("Could not get remote context.");
      }
      localClassLoader = LB.getClassLoader();
    }
    try
    {
      LD = e.c((IBinder)localClassLoader.loadClass("com.google.android.gms.common.ui.SignInButtonCreatorImpl").newInstance());
      return LD;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new m("Could not load creator class.");
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new m("Could not instantiate creator.");
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new m("Could not access creator.");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.k
 * JD-Core Version:    0.6.2
 */