package com.tencent.mapapi.map;

import android.graphics.PointF;
import android.view.GestureDetector;
import android.view.MotionEvent;
import java.lang.reflect.Method;

final class bt
{
  private static final float Xt = (float)Math.cos(0.001745329278001762D);
  boolean TW = true;
  boolean UN = true;
  boolean Uk = true;
  private boolean VX = true;
  private PointF XN = new PointF();
  private PointF XO = new PointF();
  private PointF XP = new PointF();
  private PointF XQ = new PointF();
  private bh XR = null;
  private GestureDetector XS = null;
  private long XT = 0L;
  private Method XU;
  private Method XV;
  private boolean Xf = false;
  boolean c = true;
  private int g;

  private void a(PointF paramPointF1, PointF paramPointF2, MotionEvent paramMotionEvent)
  {
    try
    {
      if (this.XU == null)
      {
        Class[] arrayOfClass1 = new Class[1];
        arrayOfClass1[0] = Integer.TYPE;
        this.XU = MotionEvent.class.getMethod("getX", arrayOfClass1);
        Class[] arrayOfClass2 = new Class[1];
        arrayOfClass2[0] = Integer.TYPE;
        this.XV = MotionEvent.class.getMethod("getY", arrayOfClass2);
      }
      Method localMethod1 = this.XU;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = new Integer(0);
      float f1 = ((Float)localMethod1.invoke(paramMotionEvent, arrayOfObject1)).floatValue();
      Method localMethod2 = this.XU;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = new Integer(1);
      float f2 = ((Float)localMethod2.invoke(paramMotionEvent, arrayOfObject2)).floatValue();
      Method localMethod3 = this.XV;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = new Integer(0);
      float f3 = ((Float)localMethod3.invoke(paramMotionEvent, arrayOfObject3)).floatValue();
      Method localMethod4 = this.XV;
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = new Integer(1);
      float f4 = ((Float)localMethod4.invoke(paramMotionEvent, arrayOfObject4)).floatValue();
      paramPointF1.set(f1, f3);
      paramPointF2.set(f2, f4);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private boolean n(float paramFloat1, float paramFloat2)
  {
    float f1 = this.XR.WW.mU() / 3.0F;
    float f2 = this.XR.WW.mE() / 3.0F;
    return (Math.abs(paramFloat1 - this.XR.WW.mU() / 2) < f1) && (Math.abs(paramFloat2 - this.XR.WW.mE() / 2) < f2);
  }

  public final void a(GestureDetector paramGestureDetector)
  {
    this.XS = paramGestureDetector;
  }

  public final void a(bh parambh)
  {
    this.XR = parambh;
  }

  public final boolean h(MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 3:
    case 4:
    default:
    case 0:
    case 5:
    case 1:
    case 6:
    case 2:
    }
    do
    {
      do
      {
        while (true)
        {
          if (this.VX)
            this.XS.onTouchEvent(paramMotionEvent);
          return true;
          this.XT = 0L;
          this.VX = true;
        }
        this.XT = System.currentTimeMillis();
        this.Xf = true;
        this.g = 0;
        this.VX = false;
        a(this.XP, this.XQ, paramMotionEvent);
        return true;
        if (this.Uk == true)
        {
          long l = System.currentTimeMillis() - this.XT;
          if ((this.g != 0) || (l <= 0L) || (l >= 200L));
        }
      }
      while (!this.Xf);
      this.XR.WW.G(false);
      this.Xf = false;
      return true;
    }
    while (!this.Xf);
    a(this.XN, this.XO, paramMotionEvent);
    double d1 = this.XN.x - this.XP.x;
    double d2 = this.XN.y - this.XP.y;
    double d3 = this.XO.x - this.XQ.x;
    double d4 = this.XO.y - this.XQ.y;
    double d17;
    if ((this.c == true) && ((this.g == 0) || (this.g == 1)))
      if (this.g == 0)
      {
        d17 = 24.0D;
        if (((Math.abs(d1) <= d17) && (Math.abs(d2) <= d17) && (Math.abs(d3) <= d17) && (Math.abs(d4) <= d17)) || (d2 * d4 <= 0.0D) || (Math.abs(d2) <= 1.2D * Math.abs(d1)) || (Math.abs(d4) <= 1.2D * Math.abs(d3)))
          break label501;
        this.g = 1;
        Math.abs(d2);
        Math.abs(d4);
        this.XP.set(this.XN.x, this.XN.y);
        this.XQ.set(this.XO.x, this.XO.y);
      }
    label785: label1124: 
    while (true)
    {
      return true;
      d17 = 8.0D;
      break;
      label501: double d5 = this.XQ.x - this.XP.x;
      double d6 = this.XQ.y - this.XP.y;
      double d7 = this.XO.x - this.XN.x;
      double d8 = this.XO.y - this.XN.y;
      double d9 = Math.sqrt(d5 * d5 + d6 * d6);
      double d10 = Math.sqrt(d7 * d7 + d8 * d8);
      if ((this.UN == true) && ((this.g == 0) || (this.g == 2)) && (d9 * d10 > 0.0D))
      {
        double d14 = (d5 * d7 + d6 * d8) / (d9 * d10);
        if (Math.abs(d14) < Xt)
        {
          double d15 = 180.0D * Math.acos(d14) / 3.141592653589793D;
          if (d5 * d8 - d6 * d7 < 0.0D)
            d15 = -d15;
          if (this.g == 0);
          for (double d16 = 13.0D; ; d16 = 1.0D)
          {
            if (Math.abs(d15) <= d16)
              break label785;
            this.g = 2;
            this.XP.set(this.XN.x, this.XN.y);
            this.XQ.set(this.XO.x, this.XO.y);
            break;
          }
        }
      }
      if ((this.Uk == true) && ((this.g == 0) || (this.g == 3)) && (d9 > 0.0D))
      {
        double d12 = d10 / d9;
        if (this.g == 0);
        for (double d13 = 0.1D; ; d13 = 0.05D)
        {
          if (Math.abs(d12 - 1.0D) <= d13)
            break label998;
          this.g = 3;
          this.XR.WW.a(d12);
          if ((!n(this.XP.x, this.XP.y)) && (!n(this.XQ.x, this.XQ.y)))
            n((this.XP.x + this.XQ.x) / 2.0F, (this.XP.y + this.XQ.y) / 2.0F);
          this.XP.set(this.XN.x, this.XN.y);
          this.XQ.set(this.XO.x, this.XO.y);
          break;
        }
      }
      label998: if ((this.g == 0) || (this.g == 4))
      {
        if (this.g == 0);
        for (double d11 = 80.0D; ; d11 = 8.0D)
        {
          if ((Math.abs(d1) <= d11) && (Math.abs(d2) <= d11) && (Math.abs(d3) <= d11) && (Math.abs(d4) <= d11))
            break label1124;
          this.g = 4;
          this.XP.set(this.XN.x, this.XN.y);
          this.XQ.set(this.XO.x, this.XO.y);
          break;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bt
 * JD-Core Version:    0.6.2
 */