package com.tencent.mm.ui.tools;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import com.tencent.mm.ui.base.d;
import java.util.Timer;

public class CropImageView extends ImageView
{
  private float cQt;
  private Bitmap dik;
  private float doT;
  float dqi = 0.0F;
  float dqj = 0.0F;
  private long dyt;
  private boolean eEK = false;
  private View.OnTouchListener ecH = new bi(this);
  private Timer erl = new Timer(true);
  private Handler hiA = new bh(this);
  private int hiB = 0;
  private bk hiC;
  private boolean hiD = true;
  private boolean hif = true;
  private boolean hig = false;
  private float hih;
  private float hii;
  private PointF hij = new PointF();
  boolean hik = false;
  private boolean hil = false;
  private boolean him = false;
  private boolean hin = false;
  private boolean hio = false;
  private boolean hip = false;
  private boolean hiq = false;
  private boolean hir = false;
  private float his = 1.0F;
  private float hit = 0.0F;
  private float hiu = 0.0F;
  private bm hiv = null;
  private boolean hiw = false;
  private Timer hix;
  private Handler hiy = new bg(this);
  private bl hiz = null;

  public CropImageView(Context paramContext)
  {
    super(paramContext);
    aMX();
  }

  public CropImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    aMX();
  }

  public final void a(bk parambk)
  {
    this.hiC = parambk;
  }

  public final void aMU()
  {
    this.hif = false;
  }

  public final void aMV()
  {
    this.hiD = false;
  }

  public final Bitmap aMW()
  {
    return this.dik;
  }

  public final void aMX()
  {
    setOnTouchListener(this.ecH);
  }

  public final void aMY()
  {
    setOnTouchListener(null);
  }

  public final void aMZ()
  {
    this.his = (1.0666F * this.his);
    if (1.0F <= this.his)
      this.hin = false;
    if (1.6F < this.his);
    for (this.him = true; (this.hif) && (4.0F < this.his); this.him = false)
    {
      this.his = 4.0F;
      return;
    }
    float[] arrayOfFloat1 = new float[2];
    float[] arrayOfFloat2 = new float[2];
    float f1 = this.hij.x;
    arrayOfFloat2[0] = f1;
    arrayOfFloat1[0] = f1;
    float f2 = this.hij.y;
    arrayOfFloat2[1] = f2;
    arrayOfFloat1[1] = f2;
    getImageMatrix().mapPoints(arrayOfFloat1);
    getImageMatrix().postScale(1.0666F, 1.0666F);
    getImageMatrix().mapPoints(arrayOfFloat2);
    getImageMatrix().postTranslate((arrayOfFloat1[0] - arrayOfFloat2[0]) / 2.0F, (arrayOfFloat1[1] - arrayOfFloat2[1]) / 2.0F);
    setImageBitmap(this.dik);
    invalidate();
  }

  public final void aNa()
  {
    this.his = (0.9375F * this.his);
    if (1.6F > this.his)
      this.him = false;
    if (1.0F > this.his);
    for (this.hin = true; 0.4F > this.his; this.hin = false)
    {
      this.his = 0.4F;
      return;
    }
    float[] arrayOfFloat1 = new float[2];
    float[] arrayOfFloat2 = new float[2];
    float f1 = this.hij.x;
    arrayOfFloat2[0] = f1;
    arrayOfFloat1[0] = f1;
    float f2 = this.hij.y;
    arrayOfFloat2[1] = f2;
    arrayOfFloat1[1] = f2;
    getImageMatrix().mapPoints(arrayOfFloat1);
    getImageMatrix().postScale(0.9375F, 0.9375F);
    getImageMatrix().mapPoints(arrayOfFloat2);
    getImageMatrix().postTranslate((arrayOfFloat1[0] - arrayOfFloat2[0]) / 2.0F, (arrayOfFloat1[1] - arrayOfFloat2[1]) / 2.0F);
    setImageBitmap(this.dik);
    invalidate();
  }

  public final void aNb()
  {
    float[] arrayOfFloat = new float[2];
    arrayOfFloat[0] = (this.dik.getWidth() / 2);
    arrayOfFloat[1] = (this.dik.getHeight() / 2);
    getImageMatrix().mapPoints(arrayOfFloat);
    getImageMatrix().postRotate(90.0F, arrayOfFloat[0], arrayOfFloat[1]);
    setImageBitmap(this.dik);
    invalidate();
    this.hiB = (1 + this.hiB);
  }

  public final int aNc()
  {
    return this.hiB;
  }

  public final void onDestroy()
  {
    if ((this.dik != null) && (!this.dik.isRecycled()))
      this.dik.recycle();
  }

  public void setImageBitmap(Bitmap paramBitmap)
  {
    this.dik = paramBitmap;
    d.a(this.hij, paramBitmap);
    super.setImageBitmap(paramBitmap);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.CropImageView
 * JD-Core Version:    0.6.2
 */