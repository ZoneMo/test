package com.tencent.mm.sdk.platformtools;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;

public final class an
{
  private static Handler gdJ = null;
  private Handler dit = null;
  private HandlerThread gdI = null;

  public an()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = cj.azV();
    aa.d("MicroMsg.MMHandlerThread", "init stack:%s", arrayOfObject);
    init();
  }

  public static boolean azB()
  {
    return Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId();
  }

  private static Handler azD()
  {
    if (gdJ == null)
      gdJ = new Handler(Looper.getMainLooper());
    return gdJ;
  }

  public static void b(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null)
      return;
    azD().postDelayed(paramRunnable, paramLong);
  }

  public static void i(Runnable paramRunnable)
  {
    if (paramRunnable == null)
      return;
    azD().post(paramRunnable);
  }

  private void init()
  {
    gdJ = null;
    this.dit = null;
    this.gdI = new HandlerThread("MMHandlerThread", 0);
    this.gdI.start();
  }

  public static void p(Runnable paramRunnable)
  {
    if (paramRunnable == null)
      return;
    azD().removeCallbacks(paramRunnable);
  }

  public final int a(ar paramar)
  {
    if (paramar == null)
      return -1;
    if (new Handler(this.gdI.getLooper()).postAtFrontOfQueue(new ap(this, paramar)))
      return 0;
    return -2;
  }

  // ERROR //
  public final int a(as paramas)
  {
    // Byte code:
    //   0: iconst_1
    //   1: anewarray 4	java/lang/Object
    //   4: astore_2
    //   5: aload_2
    //   6: iconst_0
    //   7: invokestatic 26	com/tencent/mm/sdk/platformtools/cj:azV	()Lcom/tencent/mm/sdk/platformtools/cm;
    //   10: aastore
    //   11: ldc 28
    //   13: ldc 117
    //   15: aload_2
    //   16: invokestatic 36	com/tencent/mm/sdk/platformtools/aa:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   19: ldc 119
    //   21: invokestatic 121	com/tencent/mm/sdk/platformtools/an:azB	()Z
    //   24: invokestatic 127	junit/framework/Assert:assertTrue	(Ljava/lang/String;Z)V
    //   27: iconst_0
    //   28: newarray byte
    //   30: astore_3
    //   31: new 129	com/tencent/mm/sdk/platformtools/ao
    //   34: dup
    //   35: aload_0
    //   36: aload_1
    //   37: aload_3
    //   38: invokespecial 132	com/tencent/mm/sdk/platformtools/ao:<init>	(Lcom/tencent/mm/sdk/platformtools/an;Lcom/tencent/mm/sdk/platformtools/as;Ljava/lang/Object;)V
    //   41: astore 4
    //   43: aload_3
    //   44: monitorenter
    //   45: aload_0
    //   46: aload 4
    //   48: invokevirtual 134	com/tencent/mm/sdk/platformtools/an:a	(Lcom/tencent/mm/sdk/platformtools/ar;)I
    //   51: istore 6
    //   53: iload 6
    //   55: ifne +7 -> 62
    //   58: aload_3
    //   59: invokevirtual 137	java/lang/Object:wait	()V
    //   62: aload_3
    //   63: monitorexit
    //   64: iload 6
    //   66: ireturn
    //   67: astore 5
    //   69: aload_3
    //   70: monitorexit
    //   71: aload 5
    //   73: athrow
    //   74: astore 7
    //   76: goto -14 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   45	53	67	finally
    //   58	62	67	finally
    //   62	64	67	finally
    //   58	62	74	java/lang/Exception
  }

  public final int a(Runnable paramRunnable, long paramLong)
  {
    if (paramRunnable == null)
      return -1;
    azA().postDelayed(paramRunnable, paramLong);
    return 0;
  }

  public final Handler azA()
  {
    if (this.dit == null)
      this.dit = new Handler(this.gdI.getLooper());
    return this.dit;
  }

  public final boolean azC()
  {
    return Thread.currentThread().getId() == this.gdI.getId();
  }

  public final void azx()
  {
    if ((this.gdI == null) || (!this.gdI.isAlive()))
    {
      aa.e("MicroMsg.MMHandlerThread", "setHighPriority failed thread is dead");
      return;
    }
    int i = this.gdI.getThreadId();
    try
    {
      if (-8 == Process.getThreadPriority(i))
      {
        aa.w("MicroMsg.MMHandlerThread", "setHighPriority No Need.");
        return;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.c("MicroMsg.MMHandlerThread", "thread:%d setHighPriority failed", arrayOfObject1);
      return;
    }
    Process.setThreadPriority(i, -8);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(i);
    arrayOfObject2[1] = Integer.valueOf(Process.getThreadPriority(i));
    aa.d("MicroMsg.MMHandlerThread", "thread:%d setHighPriority to %d", arrayOfObject2);
  }

  public final boolean azy()
  {
    boolean bool = true;
    if ((this.gdI == null) || (!this.gdI.isAlive()))
    {
      aa.e("MicroMsg.MMHandlerThread", "check inHighPriority failed thread is dead");
      bool = false;
    }
    while (true)
    {
      return bool;
      int i = this.gdI.getThreadId();
      try
      {
        int j = Process.getThreadPriority(i);
        if (-8 == j)
          continue;
        return false;
      }
      catch (Exception localException)
      {
        while (true)
        {
          Object[] arrayOfObject = new Object[bool];
          arrayOfObject[0] = Integer.valueOf(i);
          aa.c("MicroMsg.MMHandlerThread", "thread:%d  check inHighPriority failed", arrayOfObject);
        }
      }
    }
  }

  public final void azz()
  {
    if ((this.gdI == null) || (!this.gdI.isAlive()))
    {
      aa.e("MicroMsg.MMHandlerThread", "setLowPriority failed thread is dead");
      return;
    }
    int i = this.gdI.getThreadId();
    try
    {
      if (Process.getThreadPriority(i) == 0)
      {
        aa.w("MicroMsg.MMHandlerThread", "setLowPriority No Need.");
        return;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.c("MicroMsg.MMHandlerThread", "thread:%d setLowPriority failed", arrayOfObject1);
      return;
    }
    Process.setThreadPriority(i, 0);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(i);
    arrayOfObject2[1] = Integer.valueOf(Process.getThreadPriority(i));
    aa.d("MicroMsg.MMHandlerThread", "thread:%d setLowPriority to %d", arrayOfObject2);
  }

  public final Looper getLooper()
  {
    return this.gdI.getLooper();
  }

  public final int o(Runnable paramRunnable)
  {
    if (paramRunnable == null)
      return -1;
    azA().post(paramRunnable);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.an
 * JD-Core Version:    0.6.2
 */