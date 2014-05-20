package com.tencent.mm.plugin.backup.model;

import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.LinkedList;
import java.util.List;

public final class s
{
  private final String bRt = d.Gr() + "bakchatDownload.info";
  private com.tencent.mm.plugin.backup.a.c cKA;
  private long cKB = 0L;
  private boolean cKC;

  public s()
  {
    if (this.cKA == null)
    {
      if (!com.tencent.mm.a.c.as(this.bRt))
      {
        this.cKA = new com.tencent.mm.plugin.backup.a.c();
        this.cKA.cJb = 1;
      }
    }
    else
      return;
    try
    {
      byte[] arrayOfByte = com.tencent.mm.a.c.h(this.bRt, 0, -1);
      this.cKA = new com.tencent.mm.plugin.backup.a.c().D(arrayOfByte);
      this.cKA.cJg = 0;
      return;
    }
    catch (Exception localException)
    {
      this.cKA = new com.tencent.mm.plugin.backup.a.c();
      this.cKA.cJb = 1;
    }
  }

  private boolean ab(boolean paramBoolean)
  {
    if (this.cKA.cIZ == 0)
    {
      com.tencent.mm.a.c.deleteFile(this.bRt);
      return false;
    }
    int i;
    if (!paramBoolean)
    {
      if ((this.cKB != 0L) && (cj.O(this.cKB) <= 20000L))
        break label93;
      i = 1;
    }
    while (true)
    {
      if (i != 0);
      try
      {
        this.cKB = cj.FE();
        byte[] arrayOfByte = this.cKA.toByteArray();
        this.cKC = false;
        be.ut().o(new t(this, arrayOfByte));
        return true;
        label93: i = 0;
      }
      catch (Exception localException)
      {
      }
    }
    return false;
  }

  public final int GT()
  {
    try
    {
      int i = this.cKA.cIZ;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String GU()
  {
    try
    {
      String str = this.cKA.cJa;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int GV()
  {
    try
    {
      int i = this.cKA.cJb;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int GW()
  {
    try
    {
      int i = this.cKA.cJc;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List GX()
  {
    try
    {
      LinkedList localLinkedList = this.cKA.cJd;
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final List GY()
  {
    try
    {
      LinkedList localLinkedList = this.cKA.cJe;
      return localLinkedList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int GZ()
  {
    try
    {
      int i = this.cKA.cJf;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int Ha()
  {
    try
    {
      int i = this.cKA.cIK;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean Hb()
  {
    try
    {
      int i = this.cKA.cJg;
      if (i == 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final void a(int paramInt1, String paramString, int paramInt2)
  {
    try
    {
      this.cKA = new com.tencent.mm.plugin.backup.a.c();
      this.cKA.cIZ = paramInt1;
      this.cKA.cJa = paramString;
      this.cKA.cIK = paramInt2;
      this.cKA.cJb = 1;
      this.cKA.cJg = 1;
      ab(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void aa(boolean paramBoolean)
  {
    int i = 1;
    try
    {
      com.tencent.mm.plugin.backup.a.c localc = this.cKA;
      if (paramBoolean)
        i = 0;
      localc.cJg = i;
      if (paramBoolean)
        ab(true);
      return;
    }
    finally
    {
    }
  }

  public final void eY(int paramInt)
  {
    try
    {
      this.cKA.cJb = paramInt;
      ab(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void eZ(int paramInt)
  {
    try
    {
      this.cKA.cJc = paramInt;
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void fa(int paramInt)
  {
    try
    {
      this.cKA.cJf = paramInt;
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final int getItemCount()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 42	com/tencent/mm/plugin/backup/model/s:cKA	Lcom/tencent/mm/plugin/backup/a/c;
    //   6: getfield 134	com/tencent/mm/plugin/backup/a/c:cJe	Ljava/util/LinkedList;
    //   9: invokevirtual 160	java/util/LinkedList:iterator	()Ljava/util/Iterator;
    //   12: astore_2
    //   13: iconst_0
    //   14: istore_3
    //   15: aload_2
    //   16: invokeinterface 165 1 0
    //   21: ifeq +51 -> 72
    //   24: aload_2
    //   25: invokeinterface 169 1 0
    //   30: checkcast 171	java/lang/String
    //   33: astore 4
    //   35: aload 4
    //   37: iconst_0
    //   38: iconst_m1
    //   39: invokestatic 59	com/tencent/mm/a/c:h	(Ljava/lang/String;II)[B
    //   42: astore 6
    //   44: new 173	com/tencent/mm/protocal/a/af
    //   47: dup
    //   48: invokespecial 174	com/tencent/mm/protocal/a/af:<init>	()V
    //   51: aload 6
    //   53: invokevirtual 178	com/tencent/mm/protocal/a/af:aH	([B)Lcom/tencent/mm/protocal/a/af;
    //   56: getfield 181	com/tencent/mm/protocal/a/af:fAD	Ljava/util/LinkedList;
    //   59: invokevirtual 184	java/util/LinkedList:size	()I
    //   62: istore 7
    //   64: iload 7
    //   66: iload_3
    //   67: iadd
    //   68: istore_3
    //   69: goto -54 -> 15
    //   72: aload_0
    //   73: monitorexit
    //   74: iload_3
    //   75: ireturn
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    //   81: astore 5
    //   83: goto -68 -> 15
    //
    // Exception table:
    //   from	to	target	type
    //   2	13	76	finally
    //   15	35	76	finally
    //   35	64	76	finally
    //   35	64	81	java/lang/Exception
  }

  public final void is(String paramString)
  {
    try
    {
      this.cKA.cJd.add(paramString);
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void it(String paramString)
  {
    try
    {
      this.cKA.cJd.remove(paramString);
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void iu(String paramString)
  {
    try
    {
      this.cKA.cJe.add(paramString);
      ab(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void reset()
  {
    try
    {
      com.tencent.mm.a.c.deleteFile(this.bRt);
      this.cKA = new com.tencent.mm.plugin.backup.a.c();
      this.cKA.cJb = 1;
      this.cKC = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.model.s
 * JD-Core Version:    0.6.2
 */