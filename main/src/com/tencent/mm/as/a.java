package com.tencent.mm.as;

import com.tencent.mm.compatible.g.i;
import java.util.Date;
import java.util.concurrent.LinkedBlockingQueue;

public final class a
{
  private String bRt = "";
  private LinkedBlockingQueue hvB = new LinkedBlockingQueue();

  public a(String paramString)
  {
    this.bRt = paramString;
    Thread localThread = new Thread(new c(this), "WatchPigStat.removeOldFiles");
    localThread.setPriority(1);
    localThread.start();
  }

  private static int cl(long paramLong)
  {
    Date localDate = new Date(paramLong);
    return localDate.getDate() + 100 * (1 + localDate.getMonth()) + 10000 * (-100 + localDate.getYear());
  }

  // ERROR //
  public final void Dc()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 18	com/tencent/mm/as/a:hvB	Ljava/util/concurrent/LinkedBlockingQueue;
    //   4: invokevirtual 69	java/util/concurrent/LinkedBlockingQueue:size	()I
    //   7: istore_1
    //   8: iload_1
    //   9: ifgt +4 -> 13
    //   12: return
    //   13: new 71	java/io/FileOutputStream
    //   16: dup
    //   17: new 73	java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   24: aload_0
    //   25: getfield 22	com/tencent/mm/as/a:bRt	Ljava/lang/String;
    //   28: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: ldc 80
    //   33: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokestatic 86	com/tencent/mm/sdk/platformtools/cj:FD	()J
    //   39: invokestatic 63	com/tencent/mm/as/a:cl	(J)I
    //   42: invokevirtual 89	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   45: ldc 91
    //   47: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: invokevirtual 95	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: iconst_1
    //   54: invokespecial 98	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   57: astore_2
    //   58: iload_1
    //   59: iconst_1
    //   60: isub
    //   61: istore_3
    //   62: iload_1
    //   63: iflt +59 -> 122
    //   66: aload_0
    //   67: getfield 18	com/tencent/mm/as/a:hvB	Ljava/util/concurrent/LinkedBlockingQueue;
    //   70: ldc2_w 99
    //   73: getstatic 106	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   76: invokevirtual 110	java/util/concurrent/LinkedBlockingQueue:poll	(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    //   79: checkcast 112	com/tencent/mm/as/d
    //   82: astore 6
    //   84: aload 6
    //   86: ifnull +36 -> 122
    //   89: aload 6
    //   91: invokevirtual 116	com/tencent/mm/as/d:toByteArray	()[B
    //   94: astore 7
    //   96: aload 7
    //   98: invokestatic 120	com/tencent/mm/sdk/platformtools/cj:A	([B)Z
    //   101: ifne +29 -> 130
    //   104: aload_2
    //   105: aload 7
    //   107: arraylength
    //   108: invokevirtual 123	java/io/FileOutputStream:write	(I)V
    //   111: aload_2
    //   112: aload 7
    //   114: invokevirtual 126	java/io/FileOutputStream:write	([B)V
    //   117: iload_3
    //   118: istore_1
    //   119: goto -61 -> 58
    //   122: aload_2
    //   123: invokevirtual 129	java/io/FileOutputStream:close	()V
    //   126: return
    //   127: astore 4
    //   129: return
    //   130: iload_3
    //   131: istore_1
    //   132: goto -74 -> 58
    //   135: astore 5
    //   137: goto -15 -> 122
    //
    // Exception table:
    //   from	to	target	type
    //   13	58	127	java/lang/Exception
    //   89	117	127	java/lang/Exception
    //   122	126	127	java/lang/Exception
    //   66	84	135	java/lang/Exception
  }

  public final int a(d paramd)
  {
    if (paramd == null)
      return -1;
    this.hvB.offer(paramd);
    if ((100 <= this.hvB.size()) && (i.qd()))
    {
      Thread localThread = new Thread(new b(this), "WatchPigStat.tryCommitFile");
      localThread.setPriority(1);
      localThread.start();
    }
    return 0;
  }

  protected final void finalize()
  {
    Dc();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.as.a
 * JD-Core Version:    0.6.2
 */