package com.tencent.mm.i;

import android.util.SparseArray;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import java.util.Random;

public final class f
{
  private SparseArray cgl = new SparseArray();
  private SparseArray cgm = new SparseArray();
  private Random cgn = new Random();
  private e cgo = null;

  private g a(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    g localg = new g(this);
    localg.cgj = paramInt1;
    localg.type = paramInt2;
    localg.value = paramString1;
    localg.cgp = paramString2;
    return localg;
  }

  private void a(g paramg)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append(paramg.type);
    localStringBuffer.append("|");
    localStringBuffer.append(bQ(paramg.value));
    localStringBuffer.append("|");
    localStringBuffer.append(bQ(paramg.cgp));
    this.cgo.set(paramg.cgj, localStringBuffer.toString());
  }

  private void a(h paramh)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramh.cgs.size(); i++)
    {
      int j = paramh.cgs.keyAt(i);
      String str = (String)paramh.cgs.get(j);
      if (i != 0)
        localStringBuffer.append("|");
      localStringBuffer.append(j);
      localStringBuffer.append("|");
      localStringBuffer.append(bQ(str));
    }
    this.cgo.set(paramh.cgr, localStringBuffer.toString());
  }

  private static String bQ(String paramString)
  {
    return paramString.replaceAll("\\|", "%7C");
  }

  private g cg(int paramInt)
  {
    String str = (String)this.cgo.get(paramInt);
    if (str == null)
      return null;
    String[] arrayOfString = str.split("\\|");
    if (arrayOfString.length != 3)
    {
      aa.b("MicroMsg.NewBandageDecoder", "loadDataSource array.length != 3 content %s", new Object[] { str });
      return null;
    }
    try
    {
      g localg = a(paramInt, Integer.valueOf(arrayOfString[0]).intValue(), unescape(arrayOfString[1]), unescape(arrayOfString[2]));
      return localg;
    }
    catch (Exception localException)
    {
      aa.b("MicroMsg.NewBandageDecoder", "loadDataSource exception content %s", new Object[] { str });
    }
    return null;
  }

  private h ch(int paramInt)
  {
    String str = (String)this.cgo.get(paramInt);
    if (str == null)
      return ci(paramInt);
    String[] arrayOfString = str.split("\\|");
    if (arrayOfString.length % 2 != 0)
    {
      aa.b("MicroMsg.NewBandageDecoder", "loadWatcher array.length %% 2 != 0 content %s", new Object[] { str });
      return null;
    }
    try
    {
      h localh = ci(paramInt);
      for (int i = 0; i < arrayOfString.length; i += 2)
        localh.cgs.put(Integer.valueOf(arrayOfString[i]).intValue(), unescape(arrayOfString[(i + 1)]));
      return localh;
    }
    catch (Exception localException)
    {
      aa.b("MicroMsg.NewBandageDecoder", "loadWatcher exception content %s", new Object[] { str });
    }
    return null;
  }

  private h ci(int paramInt)
  {
    h localh = new h(this);
    localh.cgr = paramInt;
    return localh;
  }

  private h ck(int paramInt)
  {
    h localh1 = (h)this.cgm.get(paramInt);
    h localh2;
    if (localh1 == null)
    {
      localh2 = ch(paramInt);
      if (localh2 == null)
      {
        aa.e("MicroMsg.NewBandageDecoder", "[carl] loadWatcher watcher == null");
        localh1 = null;
      }
    }
    else
    {
      return localh1;
    }
    this.cgm.put(paramInt, localh2);
    return localh2;
  }

  private String rW()
  {
    long l = System.currentTimeMillis();
    int i = this.cgn.nextInt(Math.abs(this.cgn.nextInt(2147483647))) % 10000;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(l);
    arrayOfObject[1] = Integer.valueOf(i);
    return String.format("%d%04d", arrayOfObject);
  }

  private static String unescape(String paramString)
  {
    return paramString.replaceAll("%7C", "|");
  }

  public final void b(int paramInt1, int paramInt2, String paramString)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramString;
    aa.e("MicroMsg.NewBandageDecoder", "[carl] updateDataSourceValue, dataSourceId %d, type %d, value %s", arrayOfObject);
    g localg = cj(paramInt1);
    if (localg == null)
    {
      localg = a(paramInt1, paramInt2, "", "");
      this.cgl.put(paramInt1, localg);
      a(localg);
    }
    localg.value = paramString;
    localg.type = paramInt2;
    localg.cgp = rW();
    a(localg);
  }

  public final g cj(int paramInt)
  {
    g localg = (g)this.cgl.get(paramInt);
    if (localg == null)
    {
      localg = cg(paramInt);
      if (localg != null)
        this.cgl.put(paramInt, localg);
    }
    return localg;
  }

  public final void clear()
  {
    aa.d("MicroMsg.NewBandageDecoder", "[carl] decoder.clear()");
    this.cgl.clear();
    this.cgm.clear();
  }

  public final g i(int paramInt1, int paramInt2, int paramInt3)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = Integer.valueOf(paramInt3);
    aa.e("MicroMsg.NewBandageDecoder", "[carl] peek, dataSourceId %d, watcherId %d, type %d", arrayOfObject);
    g localg = cj(paramInt1);
    if (localg == null)
    {
      aa.d("MicroMsg.NewBandageDecoder", "[carl] peek, dataSource == null");
      return null;
    }
    if ((paramInt3 & localg.type) == 0)
    {
      aa.d("MicroMsg.NewBandageDecoder", "[alex] peek, dataSource.type is wrong");
      return null;
    }
    h localh = ck(paramInt2);
    if (localh != null)
    {
      String str1 = (String)localh.cgs.get(paramInt1);
      if ((str1 != null) && (str1.equals(localg.cgp)))
        return null;
      if (str1 == null)
      {
        String str2 = rW();
        localh.cgs.put(paramInt1, str2);
        a(localh);
      }
      return localg;
    }
    aa.e("MicroMsg.NewBandageDecoder", "[carl] peek, watcher == null");
    return null;
  }

  public final void init()
  {
    this.cgo = be.uz().sr();
  }

  public final void z(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.e("MicroMsg.NewBandageDecoder", "[carl] doWatch, doWatch %d, watcherId %d", arrayOfObject);
    g localg = cj(paramInt1);
    if (localg == null)
    {
      aa.d("MicroMsg.NewBandageDecoder", "[carl] doWatch, dataSource == null");
      return;
    }
    h localh = ck(paramInt2);
    if (localh == null)
    {
      aa.e("MicroMsg.NewBandageDecoder", "[carl] doWatch, watcher == null, do some fix");
      localh = ci(paramInt2);
      this.cgm.put(paramInt2, localh);
    }
    localh.cgs.put(paramInt1, localg.cgp);
    a(localh);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.i.f
 * JD-Core Version:    0.6.2
 */