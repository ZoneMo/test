package com.tencent.mm.plugin.d.c;

import android.util.SparseArray;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.d.a.e;
import com.tencent.mm.plugin.d.b.g;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import junit.framework.Assert;

final class a
  implements l
{
  private SparseArray dZs = new SparseArray();
  private SparseArray dZt = new SparseArray();
  private final ArrayList dZu = new ArrayList();
  private final Object lock = new byte[0];

  private static String Zb()
  {
    if (be.se())
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = be.uz().sS();
      arrayOfObject[1] = f.h("__file_user_action__".getBytes());
      return String.format("%s/%s", arrayOfObject);
    }
    return "";
  }

  private SparseArray Zc()
  {
    SparseArray localSparseArray1;
    synchronized (this.lock)
    {
      localSparseArray1 = this.dZs;
      SparseArray localSparseArray2 = this.dZt;
      this.dZs = new SparseArray();
      this.dZt = new SparseArray();
      int i = 0;
      if (i < localSparseArray2.size())
      {
        com.tencent.mm.plugin.d.a.a locala = (com.tencent.mm.plugin.d.a.a)localSparseArray2.valueAt(i);
        localSparseArray1.put(locala.fDL, locala);
        i++;
      }
    }
    return localSparseArray1;
  }

  // ERROR //
  private com.tencent.mm.plugin.d.a.b Zd()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: iconst_0
    //   3: istore_2
    //   4: aload_0
    //   5: invokespecial 96	com/tencent/mm/plugin/d/c/a:Zc	()Landroid/util/SparseArray;
    //   8: astore_3
    //   9: invokestatic 98	com/tencent/mm/plugin/d/c/a:Zb	()Ljava/lang/String;
    //   12: astore 4
    //   14: aload 4
    //   16: ifnonnull +12 -> 28
    //   19: ldc 100
    //   21: ldc 102
    //   23: invokestatic 108	com/tencent/mm/sdk/platformtools/aa:w	(Ljava/lang/String;Ljava/lang/String;)V
    //   26: aconst_null
    //   27: areturn
    //   28: iload_1
    //   29: anewarray 4	java/lang/Object
    //   32: astore 5
    //   34: aload 5
    //   36: iconst_0
    //   37: aload 4
    //   39: aastore
    //   40: ldc 100
    //   42: ldc 110
    //   44: aload 5
    //   46: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   49: aload 4
    //   51: invokestatic 120	com/tencent/mm/sdk/platformtools/cj:lF	(Ljava/lang/String;)[B
    //   54: astore 6
    //   56: iload_1
    //   57: anewarray 4	java/lang/Object
    //   60: astore 7
    //   62: aload 6
    //   64: ifnonnull +165 -> 229
    //   67: iload_1
    //   68: istore 8
    //   70: aload 7
    //   72: iconst_0
    //   73: iload 8
    //   75: invokestatic 126	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   78: aastore
    //   79: ldc 100
    //   81: ldc 128
    //   83: aload 7
    //   85: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   88: aload 6
    //   90: ifnull +275 -> 365
    //   93: aload 6
    //   95: arraylength
    //   96: ifle +269 -> 365
    //   99: new 130	com/tencent/mm/plugin/d/a/b
    //   102: dup
    //   103: invokespecial 131	com/tencent/mm/plugin/d/a/b:<init>	()V
    //   106: aload 6
    //   108: invokevirtual 135	com/tencent/mm/plugin/d/a/b:Q	([B)Lcom/tencent/mm/plugin/d/a/b;
    //   111: astore 21
    //   113: aload 21
    //   115: astore 9
    //   117: aload 4
    //   119: invokestatic 141	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   122: ifne +9 -> 131
    //   125: aload 4
    //   127: invokestatic 144	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   130: pop
    //   131: iload_1
    //   132: anewarray 4	java/lang/Object
    //   135: astore 10
    //   137: aload 9
    //   139: ifnonnull +137 -> 276
    //   142: aload 10
    //   144: iconst_0
    //   145: iload_1
    //   146: invokestatic 126	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   149: aastore
    //   150: ldc 100
    //   152: ldc 146
    //   154: aload 10
    //   156: invokestatic 114	com/tencent/mm/sdk/platformtools/aa:e	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   159: aload 9
    //   161: ifnull +155 -> 316
    //   164: aload 9
    //   166: getfield 150	com/tencent/mm/plugin/d/a/b:dZd	Ljava/util/LinkedList;
    //   169: invokevirtual 156	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   172: astore 13
    //   174: aload 13
    //   176: invokeinterface 161 1 0
    //   181: ifeq +135 -> 316
    //   184: aload 13
    //   186: invokeinterface 165 1 0
    //   191: checkcast 82	com/tencent/mm/plugin/d/a/a
    //   194: astore 14
    //   196: aload_3
    //   197: aload 14
    //   199: getfield 86	com/tencent/mm/plugin/d/a/a:fDL	I
    //   202: invokevirtual 168	android/util/SparseArray:get	(I)Ljava/lang/Object;
    //   205: checkcast 82	com/tencent/mm/plugin/d/a/a
    //   208: astore 15
    //   210: aload 15
    //   212: ifnonnull +69 -> 281
    //   215: aload_3
    //   216: aload 14
    //   218: getfield 86	com/tencent/mm/plugin/d/a/a:fDL	I
    //   221: aload 14
    //   223: invokevirtual 90	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   226: goto -52 -> 174
    //   229: iconst_0
    //   230: istore 8
    //   232: goto -162 -> 70
    //   235: astore 19
    //   237: aload 4
    //   239: invokestatic 141	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   242: ifne +123 -> 365
    //   245: aload 4
    //   247: invokestatic 144	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   250: pop
    //   251: aconst_null
    //   252: astore 9
    //   254: goto -123 -> 131
    //   257: astore 17
    //   259: aload 4
    //   261: invokestatic 141	com/tencent/mm/plugin/d/c/p:mk	(Ljava/lang/String;)Z
    //   264: ifne +9 -> 273
    //   267: aload 4
    //   269: invokestatic 144	com/tencent/mm/sdk/platformtools/cj:deleteFile	(Ljava/lang/String;)Z
    //   272: pop
    //   273: aload 17
    //   275: athrow
    //   276: iconst_0
    //   277: istore_1
    //   278: goto -136 -> 142
    //   281: aload 15
    //   283: aload 14
    //   285: getfield 171	com/tencent/mm/plugin/d/a/a:fDQ	I
    //   288: putfield 171	com/tencent/mm/plugin/d/a/a:fDQ	I
    //   291: aload 15
    //   293: aload 14
    //   295: getfield 174	com/tencent/mm/plugin/d/a/a:fYQ	I
    //   298: invokevirtual 178	com/tencent/mm/plugin/d/a/a:ht	(I)I
    //   301: pop
    //   302: aload_3
    //   303: aload 15
    //   305: getfield 86	com/tencent/mm/plugin/d/a/a:fDL	I
    //   308: aload 15
    //   310: invokevirtual 90	android/util/SparseArray:put	(ILjava/lang/Object;)V
    //   313: goto -139 -> 174
    //   316: new 130	com/tencent/mm/plugin/d/a/b
    //   319: dup
    //   320: invokespecial 131	com/tencent/mm/plugin/d/a/b:<init>	()V
    //   323: astore 11
    //   325: iload_2
    //   326: aload_3
    //   327: invokevirtual 76	android/util/SparseArray:size	()I
    //   330: if_icmpge +23 -> 353
    //   333: aload 11
    //   335: getfield 150	com/tencent/mm/plugin/d/a/b:dZd	Ljava/util/LinkedList;
    //   338: aload_3
    //   339: iload_2
    //   340: invokevirtual 80	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   343: invokevirtual 182	java/util/LinkedList:add	(Ljava/lang/Object;)Z
    //   346: pop
    //   347: iinc 2 1
    //   350: goto -25 -> 325
    //   353: aload 11
    //   355: aload_3
    //   356: invokevirtual 76	android/util/SparseArray:size	()I
    //   359: putfield 185	com/tencent/mm/plugin/d/a/b:dZc	I
    //   362: aload 11
    //   364: areturn
    //   365: aconst_null
    //   366: astore 9
    //   368: goto -237 -> 131
    //
    // Exception table:
    //   from	to	target	type
    //   99	113	235	java/lang/Exception
    //   99	113	257	finally
  }

  private int a(e parame)
  {
    boolean bool;
    if (parame != null)
      bool = true;
    com.tencent.mm.plugin.d.a.a locala2;
    while (true)
    {
      Assert.assertTrue("info must not be null", bool);
      com.tencent.mm.plugin.d.a.a locala1 = (com.tencent.mm.plugin.d.a.a)parame;
      synchronized (this.lock)
      {
        locala2 = (com.tencent.mm.plugin.d.a.a)this.dZs.get(locala1.fDL);
        if (locala2 == null)
        {
          aa.d("MicroMsg.ClickStreamReportHelper", "click count : not found record");
          locala2 = new com.tencent.mm.plugin.d.a.a();
          locala2.fDL = locala1.fDL;
          locala2.fYR = "";
          locala2.fDQ = locala1.fDQ;
        }
        locala2.fDR = locala1.fDR;
        locala2.YS();
        this.dZs.put(locala2.fDL, locala2);
        if (locala2 == null)
        {
          return 0;
          bool = false;
        }
      }
    }
    return locala2.fYQ;
  }

  public final x Za()
  {
    com.tencent.mm.plugin.d.a.b localb = Zd();
    if ((localb != null) && (localb.dZc > 0))
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localb.dZc);
      aa.e("MicroMsg.ClickStreamReportHelper", "userActionList.size is %d", arrayOfObject);
      LinkedList localLinkedList1 = localb.dZd;
      Object localObject = null;
      if (localLinkedList1 != null)
      {
        LinkedList localLinkedList2 = new LinkedList();
        Iterator localIterator = localb.dZd.iterator();
        while (localIterator.hasNext())
          localLinkedList2.add((com.tencent.mm.plugin.d.a.a)localIterator.next());
        localObject = localLinkedList2;
      }
      return new g(localObject);
    }
    aa.d("MicroMsg.ClickStreamReportHelper", "userActionList.size is 0, return null");
    return null;
  }

  public final int b(e parame)
  {
    if ((parame == null) || (parame.getType() != 3))
      return 0;
    a(parame);
    return 0;
  }

  public final void clear()
  {
  }

  public final void save()
  {
    aa.d("MicroMsg.ClickStreamReportHelper", "do save");
    try
    {
      com.tencent.mm.plugin.d.a.b localb = Zd();
      if (localb == null)
        return;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = localb.toString();
      aa.e("MicroMsg.ClickStreamReportHelper", "userActionList = %s", arrayOfObject1);
      String str = Zb();
      aa.e("MicroMsg.ClickStreamReportHelper", "history file name = %s", new Object[] { str });
      if (localb.dZc > 0)
      {
        cj.e(str, localb.toByteArray());
        aa.d("MicroMsg.ClickStreamReportHelper", "save useraction list ok!");
      }
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(localb.dZc);
      aa.e("MicroMsg.ClickStreamReportHelper", "list size is %d", arrayOfObject2);
      return;
    }
    catch (IOException localIOException)
    {
      aa.w("MicroMsg.ClickStreamReportHelper", "save error");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.d.c.a
 * JD-Core Version:    0.6.2
 */