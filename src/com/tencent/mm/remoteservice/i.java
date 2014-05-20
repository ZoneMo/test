package com.tencent.mm.remoteservice;

import android.os.Bundle;
import java.lang.reflect.Constructor;

final class i extends g
{
  i(RemoteService paramRemoteService)
  {
  }

  public final void a(String paramString1, String paramString2, Bundle paramBundle, c paramc)
  {
    new StringBuilder("handle, ").append(paramString1).toString();
    try
    {
      Class localClass = this.gaz.getClassLoader().loadClass(paramString1);
      Constructor[] arrayOfConstructor = localClass.getConstructors();
      Object[] arrayOfObject;
      if (arrayOfConstructor.length > 0)
      {
        arrayOfObject = new Object[arrayOfConstructor[0].getParameterTypes().length];
        arrayOfObject[0] = null;
      }
      for (a locala = (a)arrayOfConstructor[0].newInstance(arrayOfObject); ; locala = (a)localClass.newInstance())
      {
        locala.gav = paramc;
        locala.gau = this.gaz;
        locala.onCallback(paramString2, paramBundle, false);
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.remoteservice.i
 * JD-Core Version:    0.6.2
 */