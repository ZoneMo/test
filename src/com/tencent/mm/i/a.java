package com.tencent.mm.i;

import android.os.Handler;
import android.os.Looper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class a
{
  private static a cgc;
  private f cgd = new f();
  private ArrayList cge = new ArrayList();
  private boolean cgf = false;
  private final int cgg = 0;
  private final int cgh = 1;
  private Handler handler = new b(this, Looper.getMainLooper());

  private void a(int paramInt1, int paramInt2, String paramString)
  {
    if (!this.cgf)
    {
      aa.d("MicroMsg.NewBandage", "updateDataSource NewBandage has not initialized");
      return;
    }
    this.cgd.b(paramInt1, paramInt2, paramString);
    this.handler.sendMessage(this.handler.obtainMessage(0, new d(this, paramInt1, paramInt2, paramString)));
  }

  private static int parseInt(String paramString)
  {
    if (cj.hX(paramString))
      return 0;
    return cj.sV(paramString);
  }

  public static a rU()
  {
    if (cgc == null)
      cgc = new a();
    return cgc;
  }

  public final void a(c paramc)
  {
    if (!this.cgf)
    {
      aa.d("MicroMsg.NewBandage", "addWatch NewBandage has not initialized");
      return;
    }
    this.cge.add(new WeakReference(paramc));
  }

  public final void b(c paramc)
  {
    if (!this.cgf)
      aa.d("MicroMsg.NewBandage", "removeWatch NewBandage has not initialized");
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = null;
      for (int i = 0; i < this.cge.size(); i++)
      {
        WeakReference localWeakReference2 = (WeakReference)this.cge.get(i);
        if ((localWeakReference2 == null) || (localWeakReference2.get() == null) || (localWeakReference2.get() == paramc))
        {
          if (localArrayList == null)
            localArrayList = new ArrayList();
          localArrayList.add(localWeakReference2);
        }
      }
    }
    while (localArrayList == null);
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference1 = (WeakReference)localIterator.next();
      this.cge.remove(localWeakReference1);
    }
    localArrayList.clear();
  }

  public final boolean cc(int paramInt)
  {
    if (!this.cgf)
      aa.d("MicroMsg.NewBandage", "hasDot NewBandage has not initialized");
    g localg;
    do
    {
      return false;
      localg = this.cgd.i(262148, paramInt, 2);
    }
    while ((localg == null) || (parseInt(localg.value) == 0));
    return true;
  }

  public final boolean cd(int paramInt)
  {
    g localg = this.cgd.cj(paramInt);
    if (localg == null);
    while (parseInt(localg.value) == 0)
      return false;
    return true;
  }

  public final void clear()
  {
    this.cge.clear();
    this.cgd.clear();
    this.cgf = false;
  }

  public final void e(int paramInt, boolean paramBoolean)
  {
    if (!paramBoolean);
    for (String str = "0"; ; str = "1")
    {
      a(paramInt, 1, str);
      return;
    }
  }

  public final void init()
  {
    this.cgf = true;
    this.cgd.init();
  }

  public final void rV()
  {
    a(262148, 2, "1");
  }

  public final boolean x(int paramInt1, int paramInt2)
  {
    if (!this.cgf)
      aa.d("MicroMsg.NewBandage", "hasNew NewBandage has not initialized");
    g localg;
    do
    {
      return false;
      localg = this.cgd.i(paramInt1, paramInt2, 1);
    }
    while ((localg == null) || (parseInt(localg.value) == 0));
    return true;
  }

  public final void y(int paramInt1, int paramInt2)
  {
    if (!this.cgf)
    {
      aa.d("MicroMsg.NewBandage", "markRead NewBandage has not initialized");
      return;
    }
    this.cgd.z(paramInt1, paramInt2);
    this.handler.sendMessage(this.handler.obtainMessage(1, new e(this, paramInt2, paramInt1)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.i.a
 * JD-Core Version:    0.6.2
 */