package com.tencent.mm.modelvoice;

import android.content.ComponentName;
import android.media.AudioManager;
import com.tencent.mm.sdk.platformtools.aa;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class RemoteController
{
  private static Method cBT;
  private static Method cBU;
  private AudioManager cBR;
  private ComponentName cBS;

  static
  {
    try
    {
      if (cBT == null)
        cBT = AudioManager.class.getMethod("registerMediaButtonEventReceiver", new Class[] { ComponentName.class });
      if (cBU == null)
        cBU = AudioManager.class.getMethod("unregisterMediaButtonEventReceiver", new Class[] { ComponentName.class });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
  }

  protected final void finalize()
  {
    try
    {
      Method localMethod1 = cBU;
      if (localMethod1 == null);
      while (true)
      {
        super.finalize();
        return;
        Method localMethod2 = cBU;
        AudioManager localAudioManager = this.cBR;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = this.cBS;
        localMethod2.invoke(localAudioManager, arrayOfObject);
        RemoteController.RemoteControlReceiver.Ej();
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Throwable localThrowable = localInvocationTargetException.getCause();
      if ((localThrowable instanceof RuntimeException))
        throw ((RuntimeException)localThrowable);
      if ((localThrowable instanceof Error))
        throw ((Error)localThrowable);
      throw new RuntimeException(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        aa.e("MicroMsg.RemoteControlReceiver", "unexpected " + localIllegalAccessException);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.RemoteController
 * JD-Core Version:    0.6.2
 */