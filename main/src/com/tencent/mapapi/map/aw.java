package com.tencent.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Point;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

final class aw extends ad
{
  int Ud = 0;
  byte[] Ui = new byte[0];
  boolean Uk = false;
  boolean VX = false;
  private List WA = null;
  private List WB = null;
  private List WC = null;
  PaintFlagsDrawFilter WD = null;
  private List Wz = null;

  private void a(List paramList1, List paramList2, int paramInt, boolean paramBoolean)
  {
    if ((paramList1 == null) || (paramList2 == null))
      break label8;
    while (true)
    {
      label8: return;
      if ((this.Vw) && (paramInt <= this.VL) && (paramInt >= this.VM))
      {
        int i = paramList1.size();
        if (i <= 0)
          break;
        for (int j = 0; j < i; j++)
        {
          ab localab = (ab)paramList1.get(j);
          if (localab != null)
          {
            StringBuilder localStringBuilder = new StringBuilder();
            localStringBuilder.append(localab.a);
            localStringBuilder.append("-");
            localStringBuilder.append(localab.b);
            localStringBuilder.append("-");
            localStringBuilder.append(localab.Uc);
            ap localap = this.Wd.ao(localStringBuilder.toString());
            ac localac = new ac(localab.a, localab.b, localab.Uc);
            if (localap != null)
              localac.Wb = localap.Wu;
            localac.VZ = localab.VZ;
            localac.Wa = localab.Wa;
            this.WA.add(localac);
            if ((!paramBoolean) && (localac.Wb == null))
              paramList2.add(0, new aa(localab.a, localab.b, localab.Uc));
          }
        }
      }
    }
  }

  private boolean c(aa paramaa)
  {
    synchronized (this.Ui)
    {
      if (this.WB == null)
        return false;
      boolean bool = this.WB.remove(paramaa);
      return bool;
    }
  }

  private void d(List paramList)
  {
    if (paramList == null)
      return;
    synchronized (this.Ui)
    {
      if (this.WC == null)
        return;
    }
    this.WC.clear();
    int i = paramList.size();
    for (int j = 0; ; j++)
      if (j < i)
      {
        aa localaa = (aa)paramList.get(j);
        if ((localaa != null) && (!a(this.WB, localaa)))
          this.WC.add(localaa);
      }
      else
      {
        ms();
        return;
      }
  }

  private aa mK()
  {
    synchronized (this.Ui)
    {
      if (this.WC == null)
        return null;
      if (this.WC.size() <= 0)
        return null;
    }
    aa localaa = (aa)this.WC.remove(0);
    if ((this.WB != null) && (this.WB.contains(localaa) != true))
      this.WB.add(localaa);
    int i = this.WC.size();
    if (i > 0)
      ms();
    return localaa;
  }

  private void ms()
  {
    if ((this.Vm != null) && (this.Vm.WY != null) && (this.Vm.WY.WU != null))
      this.Vm.WY.WU.mN();
  }

  protected final void a(Canvas paramCanvas)
  {
    if (this.WD == null)
      this.WD = new PaintFlagsDrawFilter(0, 2);
    paramCanvas.setDrawFilter(this.WD);
    super.a(paramCanvas);
    paramCanvas.setDrawFilter(null);
  }

  protected final void a(ArrayList paramArrayList, boolean paramBoolean)
  {
    if (paramArrayList == null)
      return;
    if (paramArrayList.size() == 0)
      paramArrayList = this.Vm.WZ.a(this.Vm.WW.mV(), this.Vm.WW.mU(), this.Vm.WW.mE(), this.Vm.WW.mR());
    b(this.Wf);
    b(this.WA);
    this.Wi.clear();
    this.Ud = 0;
    int i3;
    float f1;
    Point localPoint;
    int i4;
    Object localObject2;
    int i5;
    int i6;
    float f2;
    float f3;
    int i7;
    int i8;
    ac localac2;
    int i9;
    int i11;
    int i10;
    label250: Object localObject3;
    label335: int i13;
    int i15;
    float f6;
    float f4;
    int i14;
    if (this.Wz != null)
    {
      i3 = this.Wz.size();
      if (i3 > 0)
      {
        f1 = this.Vm.WW.mR();
        localPoint = this.Vm.WZ.mY();
        i4 = -1;
        localObject2 = null;
        i5 = -1;
        i6 = -1;
        f2 = 0.0F;
        f3 = 0.0F;
        i7 = 0;
        i8 = 0;
        if (i8 < i3)
        {
          localac2 = (ac)this.Wz.get(i8);
          if (localac2 == null)
            break label1461;
          int i26;
          if (localac2.Uc == this.Vm.WZ.Um)
          {
            localac2.Wb = null;
            this.Wz.remove(i8);
            i9 = i8 - 1;
            int i25 = i3 - 1;
            i26 = i4;
            i11 = i25;
          }
          ap localap2;
          int i24;
          for (i10 = i26; ; i10 = i24)
          {
            int i12 = i9 + 1;
            i3 = i11;
            i4 = i10;
            i8 = i12;
            break;
            localap2 = this.Wd.ao(localac2.toString());
            if (localap2 != null)
              break label335;
            localac2.Wb = null;
            this.Wz.remove(i8);
            i9 = i8 - 1;
            int i23 = i3 - 1;
            i24 = i4;
            i11 = i23;
          }
          localac2.Wb = localap2.Wu;
          if (i4 == localac2.Uc)
            break label1430;
          localObject3 = this.Vm.WZ.a(this.Vm.WZ.mZ(), localac2.Uc);
          i13 = (int)Math.floor(((PointF)localObject3).x / 256.0F);
          i15 = (int)Math.floor(((PointF)localObject3).y / 256.0F);
          f6 = localPoint.x - ((PointF)localObject3).x % 256.0F;
          f4 = localPoint.y - (256.0F - ((PointF)localObject3).y % 256.0F);
          i14 = localac2.Uc;
          i7 = (int)Math.pow(2.0D, 1 + localac2.Uc);
          label473: if ((localac2 != null) && (localObject3 != null))
            if (i13 != 0)
              break label1497;
        }
      }
    }
    label839: label1497: for (int i17 = i7; ; i17 = i13)
    {
      if (i15 == 0);
      for (int i18 = i7; ; i18 = i15)
      {
        int i19 = localac2.a - i17;
        int i20;
        if (i19 < 0)
        {
          i20 = i19 + i7;
          if (i20 >= Math.abs(i19));
        }
        while (true)
        {
          int i21 = localac2.b - i18;
          int i22;
          if (i21 < 0)
          {
            i22 = i21 + i7;
            if (i22 >= Math.abs(i21));
          }
          while (true)
          {
            localac2.VZ = (f6 + i20 * 256);
            localac2.Wa = (f4 - i22 * 256);
            int i16 = localac2.Uc;
            float f7 = (float)Math.pow(2.0D, this.Vm.WZ.Um - i16);
            float f8 = localac2.VZ;
            float f9 = localac2.Wa;
            float f10 = f1 * f7 * (f8 - localPoint.x) + localPoint.x;
            float f11 = f1 * f7 * (f9 - localPoint.y) + localPoint.y;
            float f12 = f7 * (256.0F * f1);
            boolean bool2;
            if ((f10 > this.Vm.WW.mU()) || (f10 < -f12))
              bool2 = false;
            while (true)
            {
              localac2.h = f7;
              localac2.Wc = bool2;
              if (localac2.Wc)
                break label839;
              localac2.Wb = null;
              i9 = i8;
              f3 = f4;
              i5 = i13;
              localObject2 = localObject3;
              i10 = i14;
              i11 = i3;
              float f14 = f6;
              i6 = i15;
              f2 = f14;
              break;
              if ((f11 > this.Vm.WW.mE()) || (f11 < -f12))
                bool2 = false;
              else
                bool2 = true;
            }
            this.Ud = (1 + this.Ud);
            i9 = i8;
            f3 = f4;
            i5 = i13;
            localObject2 = localObject3;
            i10 = i14;
            i11 = i3;
            float f13 = f6;
            i6 = i15;
            f2 = f13;
            break label250;
            boolean bool1 = this.Vm.WW.c;
            int i = this.Vm.WW.mV();
            this.Uk = false;
            this.VX = true;
            Object localObject1;
            if (paramArrayList == null)
            {
              localObject1 = null;
              if (bool1 == true)
              {
                int j = -2 + this.Vm.WW.mV();
                if (j < this.Vm.WW.mT())
                  j = this.Vm.WW.mT();
                if (j != this.Vm.WW.mV())
                {
                  bo localbo = this.Vm.WZ;
                  int k = this.Vm.WW.mU();
                  int m = this.Vm.WW.mE();
                  this.Vm.WW.mR();
                  a(localbo.h(j, k, m), (List)localObject1, j, paramBoolean);
                }
              }
              if ((localObject1 != null) && (((List)localObject1).size() > 0))
              {
                if (this.WI != true)
                  break label1421;
                c(null);
                d((List)localObject1);
              }
            }
            while (true)
            {
              if (localObject1 == null)
                break label1428;
              ((List)localObject1).clear();
              return;
              if (!this.Vw)
              {
                localObject1 = null;
                break;
              }
              if ((i > this.VL) || (i < this.VM))
              {
                localObject1 = null;
                break;
              }
              int n = paramArrayList.size();
              if (n <= 0)
              {
                localObject1 = null;
                break;
              }
              localObject1 = new ArrayList();
              int i1 = 0;
              ab localab;
              if (i1 < n)
              {
                localab = (ab)paramArrayList.get(i1);
                if (localab != null)
                {
                  StringBuilder localStringBuilder = new StringBuilder();
                  localStringBuilder.append(localab.a);
                  localStringBuilder.append("-");
                  localStringBuilder.append(localab.b);
                  localStringBuilder.append("-");
                  localStringBuilder.append(localab.Uc);
                  ap localap1 = this.Wd.ao(localStringBuilder.toString());
                  ac localac1 = new ac(localab.a, localab.b, localab.Uc);
                  localac1.VZ = localab.VZ;
                  localac1.Wa = localab.Wa;
                  if (localap1 == null)
                    break label1399;
                  localac1.Wb = localap1.Wu;
                  this.Wf.add(localac1);
                  if (localac1.Wb != null)
                    break label1415;
                }
              }
              for (int i2 = 1; ; i2 = 0)
              {
                if (i2 == 1)
                  this.Uk = true;
                if ((!paramBoolean) && (i2 == 1))
                  ((ArrayList)localObject1).add(new aa(localab.a, localab.b, localab.Uc));
                i1++;
                break label1167;
                break;
                label1399: if (this.VX != true)
                  break label1321;
                this.VX = false;
                break label1321;
              }
              c((List)localObject1);
            }
            break;
            i13 = i5;
            localObject3 = localObject2;
            i14 = i4;
            f4 = f3;
            float f5 = f2;
            i15 = i6;
            f6 = f5;
            break label473;
            i9 = i8;
            i10 = i4;
            i11 = i3;
            break label250;
            i22 = i21;
          }
          i20 = i19;
        }
      }
    }
  }

  protected final void b(Canvas paramCanvas)
  {
    int i = 0;
    if (this.VX == true);
    int j;
    do
    {
      do
      {
        return;
        if (this.Wz != null)
        {
          int m = this.Wz.size();
          if (m > 0)
          {
            Point localPoint2 = this.Vm.WZ.mY();
            for (int n = 0; n < m; n++)
            {
              ac localac2 = (ac)this.Wz.get(n);
              if ((localac2 != null) && (localac2.Wc))
              {
                Bitmap localBitmap2 = localac2.Wb;
                if (localBitmap2 != null)
                {
                  float f2 = localac2.h;
                  Matrix localMatrix2 = new Matrix();
                  localMatrix2.setScale(f2, f2, localPoint2.x, localPoint2.y);
                  paramCanvas.save();
                  paramCanvas.concat(localMatrix2);
                  paramCanvas.drawBitmap(localBitmap2, localac2.VZ, localac2.Wa, null);
                  paramCanvas.restore();
                }
              }
            }
          }
        }
      }
      while (!this.Uk);
      j = this.WA.size();
    }
    while (j <= 0);
    Matrix localMatrix1 = new Matrix();
    int k = ((ac)this.WA.get(0)).Uc;
    float f1 = (float)Math.pow(2.0D, this.Vm.WZ.Um - k);
    Point localPoint1 = this.Vm.WZ.mY();
    localMatrix1.setScale(f1, f1, localPoint1.x, localPoint1.y);
    paramCanvas.save();
    paramCanvas.concat(localMatrix1);
    while (i < j)
    {
      ac localac1 = (ac)this.WA.get(i);
      if (localac1 != null)
      {
        Bitmap localBitmap1 = localac1.Wb;
        if (localBitmap1 == null)
        {
          a(localac1);
          localBitmap1 = localac1.Wb;
        }
        if (localBitmap1 != null)
          paramCanvas.drawBitmap(localBitmap1, localac1.VZ, localac1.Wa, null);
      }
      i++;
    }
    paramCanvas.restore();
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject)
      return true;
    if (!(paramObject instanceof aw))
      return false;
    aw localaw = (aw)paramObject;
    return this.WG.equals(localaw.WG);
  }

  public final int hashCode()
  {
    return this.p;
  }

  protected final void lX()
  {
    super.lX();
    synchronized (this.Ui)
    {
      this.WB.clear();
      this.WC.clear();
      return;
    }
  }

  protected final void mB()
  {
    this.Wf = new ArrayList();
    this.WA = new ArrayList();
    this.Wz = new ArrayList();
    this.WB = new ArrayList();
    this.Wg = new ArrayList();
    this.WC = new ArrayList();
    this.Wh = new ArrayList();
    this.Wi = new ArrayList();
    this.Ui = new byte[0];
  }

  protected final int mE()
  {
    return 16;
  }

  protected final void mF()
  {
    if (this.Wz == null)
      return;
    int i = this.WA.size();
    if (i > 0)
      for (int m = 0; m < i; m++)
      {
        ac localac2 = (ac)this.WA.get(m);
        if ((localac2 != null) && (localac2.Wb != null) && (!this.Wz.contains(localac2)))
          this.Wz.add(localac2);
      }
    int j = this.Wf.size();
    int k = 0;
    if (j > 0)
      while (k < j)
      {
        ac localac1 = (ac)this.Wf.get(k);
        if ((localac1 != null) && (localac1.Wb != null) && (!this.Wz.contains(localac1)))
          this.Wz.add(localac1);
        k++;
      }
    b(this.Wf);
    b(this.WA);
  }

  protected final void md()
  {
    super.md();
    this.We.a(null);
    synchronized (this.Ui)
    {
      this.WB.clear();
      this.WB = null;
      this.WC.clear();
      this.WC = null;
      return;
    }
  }

  protected final void me()
  {
    if (this.WF == true);
    aa localaa;
    do
    {
      return;
      localaa = mK();
    }
    while (localaa == null);
    boolean bool;
    if (localaa == null)
      bool = false;
    while (bool == true)
    {
      a(localaa);
      return;
      bool = this.We.d(localaa);
      c(localaa);
    }
    a(localaa, null);
  }

  public final String toString()
  {
    return this.WG;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.aw
 * JD-Core Version:    0.6.2
 */