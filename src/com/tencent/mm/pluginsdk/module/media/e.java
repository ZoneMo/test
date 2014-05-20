package com.tencent.mm.pluginsdk.module.media;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.view.SurfaceHolder;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class e extends Thread
{
  boolean cWZ = true;
  final float dyR;
  int fiI;
  Rect fjc = new Rect();
  Rect fjd = new Rect();
  List fje = new ArrayList();
  Map fjf = new HashMap();
  Paint fjg = null;
  Paint fjh = null;
  final int fji;
  final int fjj;
  final float fjk;
  final float fjl;
  long fjm = 0L;
  int fjn;
  int fjo;
  int fjp;
  int fjq;
  int fjr;
  int fjs;
  int fjt;
  float fju;
  float fjv;
  float fjw;
  float fjx;
  int fjy;
  int fjz;
  final int shadowColor;

  public e(LyricView paramLyricView, long paramLong)
  {
    this.fjm = paramLong;
    this.dyR = 1.0F;
    this.fjk = 0.0F;
    this.fjl = 1.0F;
    this.shadowColor = -16777216;
    this.fjg = new Paint();
    this.fjg.setAntiAlias(true);
    this.fjg.setColor(-4013374);
    this.fjg.setAlpha(255);
    this.fjg.setTextAlign(Paint.Align.CENTER);
    this.fjg.setTextSize(com.tencent.mm.an.a.fromDPToPix(paramLyricView.getContext(), 18));
    this.fjg.setShadowLayer(this.dyR, this.fjk, this.fjl, this.shadowColor);
    this.fjh = new Paint();
    this.fjh.setAntiAlias(true);
    this.fjh.setColor(-9999249);
    this.fjh.setAlpha(255);
    this.fjh.setTextAlign(Paint.Align.CENTER);
    this.fjh.setTextSize(com.tencent.mm.an.a.fromDPToPix(paramLyricView.getContext(), 18));
    this.fjh.setShadowLayer(this.dyR, this.fjk, this.fjl, this.shadowColor);
    Rect localRect = new Rect();
    this.fjg.getTextBounds("calculate text height", 0, 1, localRect);
    this.fji = localRect.height();
    this.fjj = (4 * this.fji);
  }

  private float a(Canvas paramCanvas, float paramFloat1, float paramFloat2, Paint paramPaint, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((paramCanvas == null) || (paramPaint == null))
    {
      aa.w("MicroMsg.LrcView", "autoDrawText: canvas or paint is null");
      return 0.0F;
    }
    this.fjz = paramPaint.getAlpha();
    int j;
    float f2;
    int k;
    if (paramBoolean)
    {
      j = -1 + this.fje.size();
      f2 = paramFloat2;
      k = paramInt2;
      if (j >= 0)
      {
        if (f2 <= this.fjs)
          k = (int)(255.0F * f2 / this.fjs);
        if (f2 < this.fjt)
          break label362;
      }
    }
    label362: for (int m = (int)(255.0F * (this.fjr - f2) / (this.fjr - this.fjt)); ; m = k)
    {
      paramPaint.setColor(paramInt1);
      paramPaint.setAlpha(m);
      paramCanvas.drawText((String)this.fje.get(j), paramFloat1, f2, paramPaint);
      float f3 = f2 - this.fjj;
      if (f3 > this.fjq)
      {
        j--;
        f2 = f3;
        k = m;
        break;
        f3 = f2;
      }
      for (float f1 = f3 + this.fjj; ; f1 = paramFloat2 - this.fjj)
      {
        paramPaint.setAlpha(this.fjz);
        return f1;
        for (int i = 0; i < this.fje.size(); i++)
        {
          if (paramFloat2 <= this.fjs)
            paramInt2 = (int)(255.0F * paramFloat2 / this.fjs);
          if (paramFloat2 >= this.fjt)
            paramInt2 = (int)(255.0F * (this.fjr - paramFloat2) / (this.fjr - this.fjt));
          paramPaint.setColor(paramInt1);
          paramPaint.setAlpha(paramInt2);
          paramCanvas.drawText((String)this.fje.get(i), paramFloat1, paramFloat2, paramPaint);
          paramFloat2 += this.fjj;
          if (paramFloat2 >= this.fjr)
            break;
        }
      }
    }
  }

  private String a(int paramInt, String paramString, Paint paramPaint)
  {
    if ((paramString == null) || (paramPaint == null))
    {
      aa.w("MicroMsg.LrcView", "get auto fix text, text, canvas or paint is null");
      return paramString;
    }
    for (int i = paramString.length(); ; i--)
    {
      if (i <= 0)
        break label164;
      paramPaint.getTextBounds(paramString, 0, i, this.fjd);
      if (this.fjd.width() <= paramInt)
      {
        if (i == paramString.length())
          break;
        String str = paramString.substring(0, i);
        int j = str.lastIndexOf(' ');
        int k = str.lastIndexOf('\t');
        if ((j < 0) && (k < 0))
        {
          aa.i("MicroMsg.LrcView", "do not contains ' ' or '\t'");
          return str;
        }
        aa.i("MicroMsg.LrcView", "contains ' ', index blank space[" + j + "] tab[" + k + "]");
        return str.substring(0, Math.max(j, k));
      }
    }
    label164: aa.w("MicroMsg.LrcView", "can not get auto fix text");
    return paramString;
  }

  private void a(Canvas paramCanvas, String paramString, Paint paramPaint)
  {
    if ((paramString == null) || (paramPaint == null) || (paramCanvas == null))
    {
      aa.w("MicroMsg.LrcView", "get fit text list, text, canvas or paint is null");
      return;
    }
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramCanvas.getWidth());
    String str1 = String.format("%s%d", arrayOfObject);
    List localList = (List)this.fjf.get(str1);
    if (localList != null)
    {
      this.fje = localList;
      return;
    }
    String str2 = "";
    this.fje = new ArrayList();
    do
    {
      paramString = paramString.substring(str2.length()).trim();
      str2 = a(paramCanvas.getWidth(), paramString, paramPaint);
      aa.i("MicroMsg.LrcView", "do text[" + paramString + "] temp text[" + str2 + "]");
      this.fje.add(str2);
    }
    while (!paramString.equals(str2));
    this.fjf.put(str1, this.fje);
  }

  public final void run()
  {
    if ((this.cWZ) && (LyricView.e(this.fja) != null))
      label782: 
      while (true)
      {
        Canvas localCanvas;
        int j;
        try
        {
          synchronized (LyricView.f(this.fja))
          {
            LyricView.f(this.fja).wait();
            localCanvas = this.fja.getHolder().lockCanvas();
            if (localCanvas == null)
            {
              aa.w("MicroMsg.LrcView", "renderBG, but canvas is null");
              l = this.fjm;
              if ((localCanvas != null) && (LyricView.e(this.fja) != null))
                continue;
              aa.w("MicroMsg.LrcView", "render lrc: but canvas or lrcMgr is null");
              this.fja.getHolder().unlockCanvasAndPost(localCanvas);
            }
          }
          if ((LyricView.c(this.fja) == null) && (!cj.hX(LyricView.g(this.fja))))
            LyricView.b(this.fja);
          if (!LyricView.a(LyricView.c(this.fja), localCanvas, this.fjc))
            localCanvas.drawColor(-16777216, PorterDuff.Mode.CLEAR);
          LyricView.a(LyricView.d(this.fja), localCanvas);
          continue;
        }
        catch (Exception localException)
        {
          long l;
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = localException.getLocalizedMessage();
          aa.c("MicroMsg.LrcView", "draw run catch exception %s", arrayOfObject2);
          this.cWZ = false;
          continue;
          this.fjn = (localCanvas.getHeight() >> 1);
          this.fjo = (localCanvas.getWidth() >> 1);
          this.fjp = (this.fjn + this.fji);
          this.fjq = (localCanvas.getHeight() >> 3);
          this.fjr = (7 * this.fjq + this.fji);
          this.fjs = (localCanvas.getHeight() >> 2);
          this.fjt = (3 * this.fjs + this.fji);
          this.fiI = LyricView.e(this.fja).bE(l);
          a(localCanvas, LyricView.e(this.fja).kd(this.fiI).content, this.fjg);
          this.fju = LyricView.e(this.fja).a(this.fje.size() * this.fjj, l);
          this.fjv = (this.fjp - this.fju * (float)(l - LyricView.e(this.fja).kd(this.fiI).timestamp));
          this.fjw = a(localCanvas, this.fjo, this.fjv, this.fjg, -4013374, 255, false);
          this.fjx = this.fjv;
          this.fjy = 255;
          int i = -1 + this.fiI;
          if (i >= 0)
          {
            this.fjx -= this.fjj;
            if (this.fjx >= this.fjq)
            {
              if (this.fjx < this.fjs)
                this.fjy = Math.min(255, (int)(255.0F * (this.fjx - this.fjq) / this.fjq));
              a(localCanvas, LyricView.e(this.fja).kd(i).content, this.fjh);
              this.fjx = a(localCanvas, this.fjo, this.fjx, this.fjh, -9999249, this.fjy, true);
              i--;
              continue;
            }
          }
          this.fjx = this.fjw;
          this.fjy = 255;
          j = 1 + this.fiI;
        }
        while (true)
        {
          if (j >= LyricView.e(this.fja).aqy())
            break label782;
          this.fjx += this.fjj;
          if (this.fjx > this.fjr)
            break;
          if (this.fjx > this.fjt)
            this.fjy = Math.min(255, (int)(255.0F * (this.fjr - this.fjx) / this.fjq));
          a(localCanvas, LyricView.e(this.fja).kd(j).content, this.fjh);
          this.fjx = a(localCanvas, this.fjo, this.fjx, this.fjh, -9999249, this.fjy, false);
          j++;
        }
      }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Boolean.valueOf(this.cWZ);
    if (LyricView.e(this.fja) == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject1[1] = Boolean.valueOf(bool);
      aa.e("MicroMsg.LrcView", "quit draw lrc thread, run %B, lrcMgr is null ? %B", arrayOfObject1);
      this.cWZ = false;
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.e
 * JD-Core Version:    0.6.2
 */