package com.tencent.mm.plugin.search.model;

import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.concurrent.PriorityBlockingQueue;

final class ae extends Thread
{
  private int ehJ = 0;
  private int ehK = 2147483647;
  private PriorityBlockingQueue ehL = new PriorityBlockingQueue();
  private volatile boolean ehM = false;
  private af ehN;
  private boolean ehO;
  private Runnable ehP;

  public ae(y paramy)
  {
    super("SearchDaemon");
  }

  private void hK(int paramInt)
  {
    while (true)
    {
      try
      {
        if ((paramInt < this.ehK) && (paramInt < 0) && (isAlive()))
        {
          Process.setThreadPriority(this.ehJ, -8);
          this.ehK = paramInt;
          return;
        }
        if ((paramInt <= this.ehK) || (!isAlive()))
          continue;
        if (this.ehO)
        {
          i = 10;
          Process.setThreadPriority(this.ehJ, i);
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
    }
  }

  public final void a(af paramaf)
  {
    paramaf.aaT();
    this.ehL.remove(paramaf);
    if (this.ehN == paramaf)
      interrupt();
  }

  public final void b(af paramaf)
  {
    if (this.ehM);
    int i;
    int j;
    do
    {
      return;
      this.ehL.put(paramaf);
      i = paramaf.getPriority();
      j = this.ehK;
      hK(i);
    }
    while (i >= j);
    interrupt();
  }

  public final void bk(boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        boolean bool = this.ehO;
        if (bool == paramBoolean)
          return;
        this.ehO = paramBoolean;
        if ((this.ehK >= 0) && (isAlive()))
        {
          if (this.ehO)
          {
            i = 10;
            Process.setThreadPriority(this.ehJ, i);
          }
        }
        else
        {
          StringBuilder localStringBuilder = new StringBuilder("*** Switch priority: ");
          if (!this.ehO)
            break label105;
          str = "foreground";
          aa.i("MicroMsg.SearchDaemon", str);
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
      continue;
      label105: String str = "background";
    }
  }

  public final void j(Runnable paramRunnable)
  {
    this.ehP = paramRunnable;
  }

  public final void quit()
  {
    try
    {
      this.ehM = true;
      interrupt();
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 122	android/os/Process:myTid	()I
    //   4: putfield 29	com/tencent/mm/plugin/search/model/ae:ehJ	I
    //   7: invokestatic 125	java/lang/Thread:interrupted	()Z
    //   10: pop
    //   11: aload_0
    //   12: getfield 41	com/tencent/mm/plugin/search/model/ae:ehM	Z
    //   15: ifeq +4 -> 19
    //   18: return
    //   19: aload_0
    //   20: getfield 39	com/tencent/mm/plugin/search/model/ae:ehL	Ljava/util/concurrent/PriorityBlockingQueue;
    //   23: invokevirtual 129	java/util/concurrent/PriorityBlockingQueue:poll	()Ljava/lang/Object;
    //   26: checkcast 59	com/tencent/mm/plugin/search/model/af
    //   29: astore 10
    //   31: aload 10
    //   33: ifnonnull +26 -> 59
    //   36: aload_0
    //   37: ldc 30
    //   39: invokespecial 82	com/tencent/mm/plugin/search/model/ae:hK	(I)V
    //   42: aload_0
    //   43: getfield 39	com/tencent/mm/plugin/search/model/ae:ehL	Ljava/util/concurrent/PriorityBlockingQueue;
    //   46: invokevirtual 132	java/util/concurrent/PriorityBlockingQueue:take	()Ljava/lang/Object;
    //   49: checkcast 59	com/tencent/mm/plugin/search/model/af
    //   52: astore 10
    //   54: aload 10
    //   56: ifnull -49 -> 7
    //   59: aload 10
    //   61: astore 8
    //   63: aload_0
    //   64: aload 8
    //   66: putfield 68	com/tencent/mm/plugin/search/model/ae:ehN	Lcom/tencent/mm/plugin/search/model/af;
    //   69: aload_0
    //   70: aload 8
    //   72: invokevirtual 80	com/tencent/mm/plugin/search/model/af:getPriority	()I
    //   75: invokespecial 82	com/tencent/mm/plugin/search/model/ae:hK	(I)V
    //   78: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   81: lstore 12
    //   83: lload 12
    //   85: lstore_2
    //   86: invokestatic 125	java/lang/Thread:interrupted	()Z
    //   89: pop
    //   90: aload 8
    //   92: invokevirtual 141	com/tencent/mm/plugin/search/model/af:execute	()Z
    //   95: pop
    //   96: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   99: lload_2
    //   100: lsub
    //   101: lstore_2
    //   102: ldc 93
    //   104: new 86	java/lang/StringBuilder
    //   107: dup
    //   108: ldc 143
    //   110: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload 8
    //   115: invokevirtual 146	java/lang/Object:toString	()Ljava/lang/String;
    //   118: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: ldc 148
    //   123: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: lload_2
    //   127: invokevirtual 151	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   130: ldc 153
    //   132: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 107	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   141: goto -134 -> 7
    //   144: astore 14
    //   146: aload 8
    //   148: astore 4
    //   150: aload 4
    //   152: ifnull +20 -> 172
    //   155: aload 4
    //   157: invokevirtual 156	com/tencent/mm/plugin/search/model/af:isCancelled	()Z
    //   160: ifne +12 -> 172
    //   163: aload_0
    //   164: getfield 39	com/tencent/mm/plugin/search/model/ae:ehL	Ljava/util/concurrent/PriorityBlockingQueue;
    //   167: aload 4
    //   169: invokevirtual 76	java/util/concurrent/PriorityBlockingQueue:put	(Ljava/lang/Object;)V
    //   172: lload_2
    //   173: lconst_0
    //   174: lcmp
    //   175: ifle -168 -> 7
    //   178: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   181: lload_2
    //   182: lsub
    //   183: lstore 5
    //   185: ldc 93
    //   187: new 86	java/lang/StringBuilder
    //   190: dup
    //   191: ldc 143
    //   193: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: aload 4
    //   198: invokevirtual 146	java/lang/Object:toString	()Ljava/lang/String;
    //   201: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: ldc 158
    //   206: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: lload 5
    //   211: invokevirtual 151	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   214: ldc 153
    //   216: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   222: invokestatic 107	com/tencent/mm/sdk/platformtools/aa:i	(Ljava/lang/String;Ljava/lang/String;)V
    //   225: goto -218 -> 7
    //   228: astore 7
    //   230: aconst_null
    //   231: astore 8
    //   233: ldc 93
    //   235: aload 7
    //   237: new 86	java/lang/StringBuilder
    //   240: dup
    //   241: ldc 143
    //   243: invokespecial 89	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   246: aload 8
    //   248: invokevirtual 146	java/lang/Object:toString	()Ljava/lang/String;
    //   251: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: ldc 160
    //   256: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 101	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: iconst_0
    //   263: anewarray 145	java/lang/Object
    //   266: invokestatic 163	com/tencent/mm/sdk/platformtools/aa:a	(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   269: aload_0
    //   270: getfield 113	com/tencent/mm/plugin/search/model/ae:ehP	Ljava/lang/Runnable;
    //   273: ifnull -266 -> 7
    //   276: aload_0
    //   277: getfield 113	com/tencent/mm/plugin/search/model/ae:ehP	Ljava/lang/Runnable;
    //   280: invokeinterface 167 1 0
    //   285: goto -278 -> 7
    //   288: astore 18
    //   290: aload 10
    //   292: astore 8
    //   294: aload 18
    //   296: astore 7
    //   298: goto -65 -> 233
    //   301: astore 7
    //   303: goto -70 -> 233
    //   306: astore_1
    //   307: ldc2_w 168
    //   310: lstore_2
    //   311: aconst_null
    //   312: astore 4
    //   314: goto -164 -> 150
    //   317: astore 17
    //   319: aload 10
    //   321: astore 4
    //   323: ldc2_w 168
    //   326: lstore_2
    //   327: goto -177 -> 150
    //   330: astore 11
    //   332: ldc2_w 168
    //   335: lstore_2
    //   336: aload 8
    //   338: astore 4
    //   340: goto -190 -> 150
    //
    // Exception table:
    //   from	to	target	type
    //   86	141	144	java/lang/InterruptedException
    //   7	18	228	java/lang/Exception
    //   19	31	228	java/lang/Exception
    //   36	54	288	java/lang/Exception
    //   63	83	301	java/lang/Exception
    //   86	141	301	java/lang/Exception
    //   7	18	306	java/lang/InterruptedException
    //   19	31	306	java/lang/InterruptedException
    //   36	54	317	java/lang/InterruptedException
    //   63	83	330	java/lang/InterruptedException
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ae
 * JD-Core Version:    0.6.2
 */