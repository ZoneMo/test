package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.d.a.c;
import com.tencent.mm.plugin.d.a.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;

final class b
  implements l
{
  private SparseArray dZv = new SparseArray();
  private HashMap dZw = new HashMap();
  private Object lock = new Object();

  private static String Zb()
  {
    if (be.se())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = be.uz().sS();
      arrayOfObject[1] = f.h("__file_client_perf__".getBytes());
      return String.format("%s/%s", arrayOfObject);
    }
    return "";
  }

  // ERROR //
  private c Ze()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: getfield 28	com/tencent/mm/plugin/d/c/b:lock	Ljava/lang/Object;
    //   8: astore_3
    //   9: aload_3
    //   10: monitorenter
    //   11: aload_0
    //   12: getfield 21	com/tencent/mm/plugin/d/c/b:dZv	Landroid/util/SparseArray;
    //   15: astore 5
    //   17: aload_0
    //   18: new 18	android/util/SparseArray
    //   21: dup
    //   22: invokespecial 19	android/util/SparseArray:<init>	()V
    //   25: putfield 21	com/tencent/mm/plugin/d/c/b:dZv	Landroid/util/SparseArray;
    //   28: aload_3
    //   29: monitorexit
    //   30: invokestatic 73	com/tencent/mm/plugin/d/c/b:Zb	()Ljava/lang/String;
    //   33: astore 6
    //   35: iload_1
    //   36: anewarray 4	java/lang/Object
    //   39: astore 7
    //   41: aload 7
    //   43: iconst_0
    //   44: aload 6
    //   46: aastore
    //   47: ldc 75
    //   49: ldc 77
    //   51: aload 7
    //   53: invokestatic 83	com/tencent/mm/sdk/platformtools/aa:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   56: aload 6
    //   58: invokestatic 89	com/tencent/mm/sdk/platformtools/cj:lF	(Ljava/lang/String;)[B
    //   61: astore 8
    //   63: iload_1
    //   64: anewarray 4	java/lang/Object
    //   67: astore 9
    //   69: aload 8
    //   71: ifnonnull +174 -> 245
    //   74: iload_1
    //   75: istore 10
    //   77: aload 9
    //   79: iconst_0
    //   80: iload 10
    //   82: invokestatic 95	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   85: aastore
    //   86: ldc 75
    //   88: ldc 97
    //   90: aload 9
    //   92: invokestatic 83	com/tencent/mm/sdk/platformtools/aa:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   95: aload 8
    //   97: ifnull +374 -> 471
    //   100: aload 8
    //   102: arraylength
    //   103: ifle +368 -> 471
    //   106: new 99	com/tencent/mm/plugin/d/a/c
    //   109: dup
    //   110: invokespecial 100	com/tencent/mm/plugin/d/a/c:<init>	()V
    //   113: aload 8
    //   115: invokevirtual 104	com/tencent/mm/plugin/d/a/c:R	([B)Lcom/tencent/mm/plugin/d/a/c;
    //   118: astore 23
    //   120: aload 23
    //   122: astore 11
    //   124: aload 6
    //   126: invokestatic 110	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   129: ifne +9 -> 138
    //   132: aload 6
    //   134: invokestatic 113	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   137: pop
    //   138: iload_1
    //   139: anewarray 4	java/lang/Object
    //   142: astore 12
    //   144: aload 11
    //   146: ifnonnull +146 -> 292
    //   149: aload 12
    //   151: iconst_0
    //   152: iload_1
    //   153: invokestatic 95	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   156: aastore
    //   157: ldc 75
    //   159: ldc 115
    //   161: aload 12
    //   163: invokestatic 118	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   166: aload 11
    //   168: ifnull +251 -> 419
    //   171: aload 11
    //   173: getfield 122	com/tencent/mm/plugin/d/a/c:dZe	Ljava/util/LinkedList;
    //   176: invokevirtual 128	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   179: astore 15
    //   181: aload 15
    //   183: invokeinterface 133 1 0
    //   188: ifeq +231 -> 419
    //   191: aload 15
    //   193: invokeinterface 137 1 0
    //   198: checkcast 139	com/tencent/mm/plugin/d/a/d
    //   201: astore 16
    //   203: aload 5
    //   205: aload 16
    //   207: getfield 143	com/tencent/mm/plugin/d/a/d:fDL	I
    //   210: invokevirtual 147	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   213: checkcast 139	com/tencent/mm/plugin/d/a/d
    //   216: astore 17
    //   218: aload 17
    //   220: ifnonnull +77 -> 297
    //   223: aload 5
    //   225: aload 16
    //   227: getfield 143	com/tencent/mm/plugin/d/a/d:fDL	I
    //   230: aload 16
    //   232: invokevirtual 151	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   235: goto -54 -> 181
    //   238: astore 4
    //   240: aload_3
    //   241: monitorexit
    //   242: aload 4
    //   244: athrow
    //   245: iconst_0
    //   246: istore 10
    //   248: goto -171 -> 77
    //   251: astore 21
    //   253: aload 6
    //   255: invokestatic 110	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   258: ifne +213 -> 471
    //   261: aload 6
    //   263: invokestatic 113	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   266: pop
    //   267: aconst_null
    //   268: astore 11
    //   270: goto -132 -> 138
    //   273: astore 19
    //   275: aload 6
    //   277: invokestatic 110	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   280: ifne +9 -> 289
    //   283: aload 6
    //   285: invokestatic 113	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   288: pop
    //   289: aload 19
    //   291: athrow
    //   292: iconst_0
    //   293: istore_1
    //   294: goto -145 -> 149
    //   297: aload 17
    //   299: aload 16
    //   301: getfield 154	com/tencent/mm/plugin/d/a/d:fDQ	I
    //   304: putfield 154	com/tencent/mm/plugin/d/a/d:fDQ	I
    //   307: aload 17
    //   309: getfield 157	com/tencent/mm/plugin/d/a/d:fDO	I
    //   312: aload 16
    //   314: getfield 157	com/tencent/mm/plugin/d/a/d:fDO	I
    //   317: if_icmple +13 -> 330
    //   320: aload 17
    //   322: aload 16
    //   324: getfield 157	com/tencent/mm/plugin/d/a/d:fDO	I
    //   327: putfield 157	com/tencent/mm/plugin/d/a/d:fDO	I
    //   330: aload 17
    //   332: getfield 160	com/tencent/mm/plugin/d/a/d:fDN	I
    //   335: aload 16
    //   337: getfield 160	com/tencent/mm/plugin/d/a/d:fDN	I
    //   340: if_icmpge +13 -> 353
    //   343: aload 17
    //   345: aload 16
    //   347: getfield 160	com/tencent/mm/plugin/d/a/d:fDN	I
    //   350: putfield 160	com/tencent/mm/plugin/d/a/d:fDN	I
    //   353: aload 17
    //   355: aload 17
    //   357: getfield 163	com/tencent/mm/plugin/d/a/d:fDM	I
    //   360: aload 17
    //   362: getfield 166	com/tencent/mm/plugin/d/a/d:fDP	I
    //   365: imul
    //   366: aload 16
    //   368: getfield 163	com/tencent/mm/plugin/d/a/d:fDM	I
    //   371: aload 16
    //   373: getfield 166	com/tencent/mm/plugin/d/a/d:fDP	I
    //   376: imul
    //   377: iadd
    //   378: aload 17
    //   380: getfield 166	com/tencent/mm/plugin/d/a/d:fDP	I
    //   383: aload 16
    //   385: getfield 166	com/tencent/mm/plugin/d/a/d:fDP	I
    //   388: iadd
    //   389: idiv
    //   390: putfield 163	com/tencent/mm/plugin/d/a/d:fDM	I
    //   393: aload 17
    //   395: aload 16
    //   397: getfield 166	com/tencent/mm/plugin/d/a/d:fDP	I
    //   400: invokevirtual 170	com/tencent/mm/plugin/d/a/d:ht	(I)I
    //   403: pop
    //   404: aload 5
    //   406: aload 17
    //   408: getfield 143	com/tencent/mm/plugin/d/a/d:fDL	I
    //   411: aload 17
    //   413: invokevirtual 151	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   416: goto -235 -> 181
    //   419: new 99	com/tencent/mm/plugin/d/a/c
    //   422: dup
    //   423: invokespecial 100	com/tencent/mm/plugin/d/a/c:<init>	()V
    //   426: astore 13
    //   428: iload_2
    //   429: aload 5
    //   431: invokevirtual 174	android/util/SparseArray:size	()I
    //   434: if_icmpge +24 -> 458
    //   437: aload 13
    //   439: getfield 122	com/tencent/mm/plugin/d/a/c:dZe	Ljava/util/LinkedList;
    //   442: aload 5
    //   444: iload_2
    //   445: invokevirtual 177	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   448: invokevirtual 181	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   451: pop
    //   452: iinc 2 1
    //   455: goto -27 -> 428
    //   458: aload 13
    //   460: aload 5
    //   462: invokevirtual 174	android/util/SparseArray:size	()I
    //   465: putfield 184	com/tencent/mm/plugin/d/a/c:dZc	I
    //   468: aload 13
    //   470: areturn
    //   471: aconst_null
    //   472: astore 11
    //   474: goto -336 -> 138
    //
    // Exception table:
    //   from	to	target	type
    //   11	30	238	finally
    //   106	120	251	java/lang/Exception
    //   106	120	273	finally
  }

  public final x Za()
  {
    c localc = Ze();
    if (localc.dZc > 0)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localc.dZc);
      aa.f("MicroMsg.ClientPerfReport", "clientPerfList.size is %d", arrayOfObject);
      LinkedList localLinkedList = new LinkedList();
      Iterator localIterator = localc.dZe.iterator();
      while (localIterator.hasNext())
        localLinkedList.add((com.tencent.mm.plugin.d.a.d)localIterator.next());
      return new com.tencent.mm.plugin.d.b.d(localLinkedList);
    }
    aa.d("MicroMsg.ClientPerfReport", "clientPerfList.size is 0, return null");
    return null;
  }

  public final int b(e parame)
  {
    if ((parame == null) || (parame.getType() != 0))
      return 0;
    com.tencent.mm.plugin.d.a.d locald1 = (com.tencent.mm.plugin.d.a.d)parame;
    if (locald1.YT())
    {
      if (!this.dZw.containsKey(Long.valueOf(locald1.YU())))
        this.dZw.put(Long.valueOf(locald1.YU()), locald1);
      return 0;
    }
    if (locald1.uX())
    {
      this.dZw.remove(Long.valueOf(locald1.YU()));
      return 0;
    }
    com.tencent.mm.plugin.d.a.d locald2 = (com.tencent.mm.plugin.d.a.d)this.dZw.get(Long.valueOf(locald1.YU()));
    if (locald2 == null)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(locald1.fDL);
      aa.f("MicroMsg.ClientPerfReport", "begin record not find, eventID=%d", arrayOfObject2);
      return -1;
    }
    this.dZw.remove(Long.valueOf(locald1.YU()));
    long l = locald1.YV() - locald2.YV();
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(locald1.fDL);
    arrayOfObject1[1] = Integer.valueOf((int)l);
    aa.f("MicroMsg.ClientPerfReport", "eventID:%d  time:%d", arrayOfObject1);
    locald1.fDM = ((int)l);
    locald1.fDQ = locald2.fDQ;
    com.tencent.mm.plugin.d.a.d locald3;
    synchronized (this.lock)
    {
      locald3 = (com.tencent.mm.plugin.d.a.d)this.dZv.get(locald1.fDL);
      if (locald3 == null)
      {
        locald3 = new com.tencent.mm.plugin.d.a.d();
        locald3.fDL = locald1.fDL;
        locald3.fDO = locald1.fDM;
        locald3.fDN = locald1.fDM;
        locald3.fDM = locald1.fDM;
        locald3.fDQ = locald1.fDQ;
        locald3.fDR = locald1.fDR;
        locald3.YS();
        this.dZv.put(locald3.fDL, locald3);
        if (locald3 == null)
          return 0;
      }
      else
      {
        if (locald3.fDO > locald1.fDM)
          locald3.fDO = locald1.fDM;
        if (locald3.fDN < locald1.fDM)
          locald3.fDN = locald1.fDM;
        locald3.fDM = ((locald3.fDM * locald3.fDP + locald1.fDM) / (1 + locald3.fDP));
        locald3.fDR = locald1.fDR;
      }
    }
    return locald3.fDP;
  }

  public final void clear()
  {
    this.dZw.clear();
    synchronized (this.lock)
    {
      this.dZv = new SparseArray();
      return;
    }
  }

  public final void save()
  {
    try
    {
      c localc = Ze();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localc.toString();
      aa.f("MicroMsg.ClientPerfReport", "clientPerfList = %s", arrayOfObject1);
      String str = Zb();
      aa.f("MicroMsg.ClientPerfReport", "history file name = %s", new Object[] { str });
      if (localc.dZc > 0)
      {
        cj.e(str, localc.toByteArray());
        aa.d("MicroMsg.ClientPerfReport", "save client perf list ok!");
      }
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(localc.dZc);
      aa.f("MicroMsg.ClientPerfReport", "list size is %d", arrayOfObject2);
      return;
    }
    catch (IOException localIOException)
    {
      aa.w("MicroMsg.ClientPerfReport", "save error");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.b
 * JD-Core Version:    0.6.2
 */