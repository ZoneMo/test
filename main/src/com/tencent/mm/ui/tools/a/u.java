package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

public class u
{
  static final Handler hqC = new v(Looper.getMainLooper());
  private static u hqw = null;
  final Context context;
  final n hpX;
  final e hpY;
  final af hpZ;
  final ReferenceQueue hqA;
  boolean hqB;
  private final x hqx;
  final Map hqy;
  final Map hqz;

  private u(Context paramContext, n paramn, e parame, af paramaf, boolean paramBoolean)
  {
    this.context = paramContext;
    this.hpX = paramn;
    this.hpY = parame;
    this.hpZ = paramaf;
    this.hqB = paramBoolean;
    this.hqy = new WeakHashMap();
    this.hqz = new WeakHashMap();
    this.hqA = new ReferenceQueue();
    this.hqx = new x(this.hqA, hqC);
    this.hqx.start();
  }

  public static ad a(l paraml)
  {
    if (paraml == null)
      throw new IllegalArgumentException("Object must not be zero.");
    return new ad(paraml);
  }

  static u aOH()
  {
    return hqw;
  }

  public static ad aOI()
  {
    return new ad();
  }

  public static u ch(Context paramContext)
  {
    if (hqw == null);
    try
    {
      hqw = new w(paramContext).aOL();
      return hqw;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void close()
  {
    while (true)
    {
      try
      {
        if (hqw != null)
        {
          if (hqw.hqy.size() != 0)
            break label160;
          hqw.hpY.clear();
          hqw.hpZ.shutdown();
          n localn = hqw.hpX;
          localn.hqm.shutdown();
          localn.hql.quit();
          Iterator localIterator = hqw.hqz.values().iterator();
          if (!localIterator.hasNext())
            continue;
          ((m)localIterator.next()).cancel();
          continue;
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        return;
        hqw.hqz.clear();
        hqw.hqy.clear();
        hqw.hqx.shutdown();
        hqw = null;
        continue;
      }
      finally
      {
      }
      label160: hqw.hpY.clear();
    }
  }

  final void a(ImageView paramImageView, m paramm)
  {
    this.hqz.put(paramImageView, paramm);
  }

  public final void aOJ()
  {
    this.hqB = false;
  }

  public final void an(Object paramObject)
  {
    if (paramObject == null);
    m localm;
    do
    {
      do
      {
        return;
        a locala = (a)this.hqy.remove(paramObject);
        if (locala != null)
        {
          locala.cancel();
          n localn = this.hpX;
          localn.handler.sendMessage(localn.handler.obtainMessage(2, locala));
        }
      }
      while (!(paramObject instanceof ImageView));
      ImageView localImageView = (ImageView)paramObject;
      localm = (m)this.hqz.remove(localImageView);
    }
    while (localm == null);
    localm.cancel();
  }

  final void c(a parama)
  {
    Object localObject = parama.hpO.get();
    if (localObject != null)
    {
      an(localObject);
      this.hqy.put(localObject, parama);
    }
    n localn = this.hpX;
    localn.handler.sendMessage(localn.handler.obtainMessage(1, parama));
  }

  final void d(d paramd)
  {
    List localList = paramd.aOF();
    if (localList.isEmpty());
    while (true)
    {
      return;
      Bitmap localBitmap = paramd.aOE();
      s locals = paramd.aOC();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        if (!locala.EM)
        {
          this.hqy.remove(locala.hpO.get());
          if (localBitmap != null)
          {
            if (locals == null)
              throw new AssertionError("LoadedFrom cannot be null.");
            locala.a(localBitmap, locals);
          }
          else
          {
            locala.error();
          }
        }
      }
    }
  }

  final Bitmap xW(String paramString)
  {
    Bitmap localBitmap = this.hpY.fP(paramString);
    if (localBitmap != null)
    {
      this.hpZ.aOW();
      return localBitmap;
    }
    this.hpZ.aOX();
    return localBitmap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.u
 * JD-Core Version:    0.6.2
 */