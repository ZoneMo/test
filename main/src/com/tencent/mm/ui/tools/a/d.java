package com.tencent.mm.ui.tools.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Handler;
import android.provider.ContactsContract.Contacts;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

abstract class d
  implements Runnable
{
  private static final Lock hpV = new ReentrantLock();
  protected static final int hpW = 22;
  final String cnG;
  Bitmap csW;
  final ab hpN;
  final n hpX;
  final e hpY;
  final af hpZ;
  final List hqa;
  Future hqb;
  s hqc;
  Exception hqd;
  int hqe;

  d(n paramn, e parame, af paramaf, a parama)
  {
    this.hpX = paramn;
    this.hpY = parame;
    this.hpZ = paramaf;
    this.cnG = parama.cnG;
    this.hpN = parama.hpN;
    this.hqa = new ArrayList(4);
    a(parama);
  }

  static d a(Context paramContext, n paramn, e parame, af paramaf, a parama)
  {
    if (parama.hpN.resourceId != 0)
      return new ae(paramContext, paramn, parame, paramaf, parama);
    if (parama.hpN.hqL != null)
      return new k(paramContext, paramn, parame, paramaf, parama);
    Uri localUri = parama.hpN.uri;
    String str = localUri.getScheme();
    if ("content".equals(str))
    {
      if ((ContactsContract.Contacts.CONTENT_URI.getHost().equals(localUri.getHost())) && (!localUri.getPathSegments().contains("photo")))
        return new h(paramContext, paramn, parame, paramaf, parama);
      return new i(paramContext, paramn, parame, paramaf, parama);
    }
    if ("file".equals(str))
    {
      if ("android_asset".equals(localUri.getPathSegments().get(0)))
        return new c(paramContext, paramn, parame, paramaf, parama);
      return new q(paramContext, paramn, parame, paramaf, parama);
    }
    if ("android.resource".equals(str))
      return new ae(paramContext, paramn, parame, paramaf, parama);
    throw new UnsupportedOperationException("[for request] not supported type");
  }

  static void a(int paramInt1, int paramInt2, BitmapFactory.Options paramOptions)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    int m;
    if ((i > paramInt2) || (j > paramInt1))
    {
      k = Math.round(i / paramInt2);
      m = Math.round(j / paramInt1);
      if (k >= m)
        break label65;
    }
    while (true)
    {
      paramOptions.inSampleSize = k;
      paramOptions.inJustDecodeBounds = false;
      return;
      label65: k = m;
    }
  }

  private Bitmap aOD()
  {
    Bitmap localBitmap1 = this.hpY.fP(this.cnG);
    Iterator localIterator = this.hqa.iterator();
    int i;
    int k;
    int m;
    Matrix localMatrix;
    int i2;
    int i3;
    int n;
    int i1;
    label307: label437: float f2;
    label398: float f3;
    while (localIterator.hasNext())
      if (((a)localIterator.next()).hpS)
      {
        i = 1;
        Object localObject1;
        if ((localBitmap1 != null) && (i == 0))
        {
          this.hpZ.aOW();
          this.hqc = s.hqr;
          localObject1 = localBitmap1;
        }
        do
        {
          return localObject1;
          localObject1 = a(this.hpN);
        }
        while (localObject1 == null);
        this.hpZ.q((Bitmap)localObject1);
        hpV.lock();
        while (true)
        {
          ab localab;
          float f4;
          float f5;
          try
          {
            float f1;
            if ((this.hpN.aON()) || (this.hqe != 0))
            {
              localab = this.hpN;
              int j = this.hqe;
              k = ((Bitmap)localObject1).getWidth();
              m = ((Bitmap)localObject1).getHeight();
              localMatrix = new Matrix();
              if (!localab.aON())
                break;
              i2 = localab.dhY;
              i3 = localab.dhZ;
              f1 = localab.hqO;
              if (f1 != 0.0F)
              {
                if (!localab.hqR)
                  continue;
                localMatrix.setRotate(f1, localab.hqP, localab.hqQ);
              }
              if (!localab.hqM)
                break label437;
              f4 = i2 / k;
              f5 = i3 / m;
              if (f4 <= f5)
                break label398;
              int i4 = (int)Math.ceil(m * (f5 / f4));
              int i5 = (m - i4) / 2;
              n = 0;
              i1 = i5;
              m = i4;
              f5 = f4;
              localMatrix.preScale(f5, f5);
              if (j != 0)
                localMatrix.preRotate(j);
              Bitmap localBitmap2 = Bitmap.createBitmap((Bitmap)localObject1, n, i1, k, m, localMatrix, true);
              if (localBitmap2 != localObject1)
              {
                ((Bitmap)localObject1).recycle();
                localObject1 = localBitmap2;
              }
            }
            hpV.unlock();
            this.hpZ.r((Bitmap)localObject1);
            return localObject1;
            localMatrix.setRotate(f1);
            continue;
          }
          finally
          {
            hpV.unlock();
          }
          double d = k * (f4 / f5);
          int i6 = (int)Math.ceil(d);
          n = (k - i6) / 2;
          k = i6;
          i1 = 0;
          continue;
          if (!localab.hqN)
            break label531;
          f2 = i2 / k;
          f3 = i3 / m;
          if (f2 >= f3)
            break label524;
          label471: localMatrix.preScale(f2, f2);
          n = 0;
          i1 = 0;
        }
      }
    while (true)
    {
      label490: localMatrix.preScale(i2 / k, i3 / m);
      label524: label531: 
      do
      {
        do
        {
          n = 0;
          i1 = 0;
          break label307;
          i = 0;
          break;
          f2 = f3;
          break label471;
        }
        while ((i2 == 0) || (i3 == 0));
        if (i2 != k)
          break label490;
      }
      while (i3 == m);
    }
  }

  abstract Bitmap a(ab paramab);

  final void a(a parama)
  {
    this.hqa.add(parama);
  }

  s aOC()
  {
    return this.hqc;
  }

  final Bitmap aOE()
  {
    return this.csW;
  }

  final List aOF()
  {
    return this.hqa;
  }

  final void b(a parama)
  {
    this.hqa.remove(parama);
  }

  final boolean cancel()
  {
    boolean bool1 = this.hqa.isEmpty();
    boolean bool2 = false;
    if (bool1)
    {
      Future localFuture = this.hqb;
      bool2 = false;
      if (localFuture != null)
      {
        boolean bool3 = this.hqb.cancel(false);
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  final String getKey()
  {
    return this.cnG;
  }

  final boolean isCancelled()
  {
    return (this.hqb != null) && (this.hqb.isCancelled());
  }

  public void run()
  {
    try
    {
      Thread localThread = Thread.currentThread();
      StringBuilder localStringBuilder = new StringBuilder("Monet-");
      ab localab = this.hpN;
      String str;
      if (localab.uri != null)
      {
        str = localab.uri.getPath();
        localThread.setName(str);
        this.csW = aOD();
        if (this.csW != null)
          break label139;
        n localn2 = this.hpX;
        localn2.handler.sendMessage(localn2.handler.obtainMessage(6, this));
      }
      while (true)
      {
        return;
        if (localab.hqL != null)
        {
          str = localab.hqL.getKey();
          break;
        }
        str = Integer.toHexString(localab.resourceId);
        break;
        label139: n localn1 = this.hpX;
        localn1.handler.sendMessage(localn1.handler.obtainMessage(4, this));
      }
    }
    catch (IOException localIOException)
    {
      this.hqd = localIOException;
      return;
    }
    finally
    {
      Thread.currentThread().setName("Monet-Idle");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.d
 * JD-Core Version:    0.6.2
 */