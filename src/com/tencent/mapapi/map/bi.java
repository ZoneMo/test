package com.tencent.mapapi.map;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bi
{
  public List Ua = null;
  public List Ub = null;
  public boolean WF = false;
  public List Xb = new ArrayList();
  private List Xc = new ArrayList();
  byte[] Xd = new byte[0];
  byte[] Xe = new byte[0];
  public boolean Xf = false;
  public bs Xg = bs.XL;
  private final String Xh = "http://pwh.map.qq.com/ih?dt=tile&rt=m256&c=%s";
  private final String Xi = "http://rtt.map.soso.com/m?c=%s&sp=128x2";
  private Matrix Xj = new Matrix();
  private int m = 0;

  public bi(bh parambh, Context paramContext)
  {
    if (paramContext == null)
      return;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    int i = localDisplayMetrics.widthPixels;
    int j = localDisplayMetrics.heightPixels;
    this.m = ((2 + (int)(i / 0.6F / 256.0F)) * (2 + (int)(j / 0.6F / 256.0F)) + (1 + i / 256) * (1 + j / 256));
    if (this.Ua == null)
      this.Ua = new ArrayList();
    if (this.Ub == null)
      this.Ub = new ArrayList();
    au localau;
    if ((this.Ub != null) && (bq.VK != br.XG))
    {
      localau = new au(bq.b(bl.a(this.Xk.WY)));
      localau.Wy = this.Xk.WY;
    }
    while (true)
    {
      synchronized (this.Xe)
      {
        this.Ub.add(localau);
        parambh.WY.WU.bb(1);
        if (bq.XF != bs.XK)
          break label619;
        k = 1;
        if (k != 1)
          break label483;
      }
      synchronized (this.Xd)
      {
        ak("map_raster");
        bb localbb2 = new bb();
        localbb2.WN = new bj(this);
        localbb2.WG = "map_google";
        localbb2.WH = true;
        localbb2.Vw = true;
        localbb2.WI = true;
        localbb2.VL = 18;
        localbb2.VM = 2;
        localbb2.r = 1;
        localbb2.WM = true;
        synchronized (this.Xd)
        {
          b(localbb2);
          this.Xg = bs.XK;
          parambh.WY.WU.bb(10);
          return;
          localObject5 = finally;
          throw localObject5;
        }
      }
      label483: bb localbb1;
      synchronized (this.Xd)
      {
        ak("map_google");
        localbb1 = new bb();
        localbb1.WN = new bk(this);
        localbb1.WG = "map_raster";
        localbb1.WH = true;
        localbb1.Vw = true;
        localbb1.WI = true;
        localbb1.VL = 18;
        localbb1.VM = 2;
        localbb1.r = 3;
        localbb1.WM = false;
      }
      label619: int k = 0;
    }
  }

  private boolean ak(String paramString)
  {
    if (paramString.equals("") == true)
      return false;
    b(paramString, false);
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ba localba = (ba)this.Ua.get(j);
      if ((localba != null) && (localba.WG.equals(paramString)))
      {
        localba.Vw = false;
        this.Ua.remove(localba);
        localba.md();
        mO();
        return true;
      }
    }
    return false;
  }

  private boolean b(bb parambb)
  {
    boolean bool;
    if (parambb == null)
    {
      bool = false;
      return bool;
    }
    if (parambb.WG.equals("") == true)
      return false;
    String str = parambb.WG;
    int i1;
    if (this.Ua != null)
    {
      int n = this.Ua.size();
      i1 = 0;
      if (i1 < n)
      {
        ba localba2 = (ba)this.Ua.get(i1);
        if ((localba2 == null) || (localba2.WG.equals(str) != true));
      }
    }
    for (int i = 1; ; i = 0)
    {
      if (i != 1)
        break label112;
      return false;
      i1++;
      break;
    }
    label112: Object localObject;
    label133: int j;
    if (!parambb.WG.equals("trafficmap_raster"))
    {
      localObject = new aw();
      ((ad)localObject).a(parambb);
      ((ad)localObject).a(this.Xk);
      ((ad)localObject).Wd = new an(this.m, ((ad)localObject).WJ, ((ad)localObject).WK);
      ((ad)localObject).We = new bc(this.Xk.WY.mQ(), (bb)localObject);
      ((ad)localObject).We.a(((ad)localObject).Wd);
      ((ad)localObject).mB();
      j = this.Ua.size();
      if ((((ad)localObject).WH) && (j != 0))
        break label292;
      bool = this.Ua.add(localObject);
    }
    label292: label298: label379: 
    while (true)
    {
      mO();
      if (((ad)localObject).Vw != true)
        break;
      b(((ad)localObject).WG, true);
      return bool;
      localObject = new ad();
      break label133;
      int k = j - 1;
      if (k >= 0)
      {
        ba localba1 = (ba)this.Ua.get(k);
        if ((localba1 != null) && (!localba1.WH))
          this.Ua.add(k, localObject);
      }
      for (bool = true; ; bool = false)
      {
        if (bool)
          break label379;
        bool = this.Ua.add(localObject);
        break;
        k--;
        break label298;
      }
    }
  }

  private boolean b(String paramString, boolean paramBoolean)
  {
    if (paramString.equals("") == true)
      return false;
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ba localba1 = (ba)this.Ua.get(j);
      if ((localba1 != null) && (localba1.WG.equals(paramString) == true))
      {
        localba1.Vw = paramBoolean;
        if (!localba1.WH)
          return true;
        if (paramBoolean == true)
        {
          if (localba1.VL > localba1.VM)
          {
            bm localbm1 = this.Xk.WW;
            int i1 = localba1.VL;
            if (i1 > 0)
              localbm1.Xx.WZ.Ud = i1;
            bm localbm2 = this.Xk.WW;
            int i2 = localba1.VM;
            if (i2 > 0)
              localbm2.Xx.WZ.Uc = i2;
            this.Xk.WZ.md();
            if (this.Xk.WW.mV() > localba1.VL)
              this.Xk.WW.bb(localba1.VL);
            if (this.Xk.WW.mV() < localba1.VM)
              this.Xk.WW.bb(localba1.VM);
          }
          if (paramString.equals("") != true)
          {
            int k = this.Ua.size();
            for (int n = 0; n < k; n++)
            {
              ba localba2 = (ba)this.Ua.get(n);
              if ((localba2 != null) && (!localba2.WG.equals(paramString)) && (localba2.WH == true) && (localba2.Vw == true))
                localba2.Vw = false;
            }
          }
          this.Xk.WW.G(false);
          return true;
        }
      }
    }
    return false;
  }

  private void mO()
  {
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ba localba = (ba)this.Ua.get(j);
      if (localba != null)
        localba.p = j;
    }
  }

  public final void a(Canvas paramCanvas)
  {
    boolean bool = true;
    float f = this.Xk.WW.mR();
    if (f != 1.0F)
    {
      paramCanvas.save();
      this.Xj.reset();
      this.Xj.postScale(f, f, this.Xk.WZ.mY().x, this.Xk.WZ.mY().y);
      paramCanvas.concat(this.Xj);
    }
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ba localba = (ba)this.Ua.get(j);
      if ((localba != null) && (localba.Vw))
        localba.c(paramCanvas);
    }
    if (f != 1.0F)
      paramCanvas.restore();
    long l = System.currentTimeMillis();
    Iterator localIterator1 = this.Xb.iterator();
    while (localIterator1.hasNext())
    {
      m localm2 = (m)localIterator1.next();
      if ((localm2 != null) && (localm2.mv()) && (localm2 != null))
        localm2.a(paramCanvas, bm.a(this.Xk.WW), bool, l);
    }
    Iterator localIterator2 = this.Xb.iterator();
    while (localIterator2.hasNext())
    {
      m localm1 = (m)localIterator2.next();
      if (localm1 != null)
        localm1.a(paramCanvas, bm.a(this.Xk.WW), false, l);
    }
    if (this.Xk.WX.Xg != bs.XK)
    {
      Iterator localIterator3 = this.Xc.iterator();
      while (localIterator3.hasNext())
        ((az)localIterator3.next()).a(paramCanvas, bm.a(this.Xk.WW), false, l);
    }
    if (bq.VK == br.XH);
    while (true)
    {
      if (bool)
      {
        Paint localPaint = new Paint();
        localPaint.setColor(-65536);
        localPaint.setTextSize(30.0F);
        Rect localRect = new Rect();
        int k = this.Xk.WW.mU();
        int n = this.Xk.WW.mE();
        localPaint.getTextBounds("鉴权失败，请到soso", 0, "鉴权失败，请到soso".length(), localRect);
        paramCanvas.drawText("鉴权失败，请到soso", k / 2 - localRect.width() / 2, n / 2 - localRect.height(), localPaint);
        localPaint.getTextBounds("地图官网申请密钥", 0, "地图官网申请密钥".length(), localRect);
        paramCanvas.drawText("地图官网申请密钥", k / 2 - localRect.width() / 2, 2 + n / 2, localPaint);
      }
      return;
      bool = false;
    }
  }

  public final void a(az paramaz)
  {
    this.Xc.add(paramaz);
  }

  public final void mB()
  {
    if ((this.Xk.WW == null) || (bm.a(this.Xk.WW) == null))
      return;
    bm.a(this.Xk.WW).postInvalidate();
  }

  public final void md()
  {
    int i = this.Xb.size();
    for (int j = 0; j < i; j++)
      this.Xb.remove(0);
    int k = this.Xc.size();
    for (int n = 0; n < k; n++)
    {
      az localaz = (az)this.Xc.remove(0);
      if (localaz != null)
        localaz.me();
    }
  }

  public final void me()
  {
    int i = 0;
    if (this.Ub != null);
    while (true)
    {
      int n;
      synchronized (this.Xe)
      {
        int k = this.Ub.size();
        n = 0;
        if (n < k)
        {
          av localav = (av)this.Ub.remove(0);
          if (localav == null)
            break label150;
          localav.me();
          break label150;
        }
        if (this.Ua == null);
      }
      synchronized (this.Xd)
      {
        int j = this.Ua.size();
        while (i < j)
        {
          ba localba = (ba)this.Ua.remove(0);
          if (localba != null)
            localba.md();
          i++;
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        return;
      }
      label150: n++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bi
 * JD-Core Version:    0.6.2
 */