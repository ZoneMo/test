package com.tencent.mm.ui.tools;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.d;
import java.util.Timer;

final class bi
  implements View.OnTouchListener
{
  bi(CropImageView paramCropImageView)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!CropImageView.u(this.hiE));
    do
    {
      int i;
      do
      {
        do
          return false;
        while (CropImageView.i(this.hiE) == null);
        i = 0xFF & paramMotionEvent.getAction();
        aa.d("MicroMsg.CropImageView", "on touch : event type=" + i + ", isDownOnImg=" + CropImageView.v(this.hiE));
      }
      while ((!CropImageView.v(this.hiE)) && (i != 0));
      switch (i)
      {
      case 3:
      case 4:
      default:
        return false;
      case 0:
        aa.d("MicroMsg.CropImageView", "action_down");
        CropImageView.a(this.hiE, paramMotionEvent.getRawX());
        CropImageView.b(this.hiE, paramMotionEvent.getRawY());
        aa.d("MicroMsg.CropImageView", "lastX=" + CropImageView.w(this.hiE) + ",lastY=" + CropImageView.x(this.hiE));
        CropImageView.c(this.hiE, CropImageView.w(this.hiE));
        CropImageView.d(this.hiE, CropImageView.x(this.hiE));
        Matrix localMatrix = this.hiE.getImageMatrix();
        RectF localRectF = new RectF();
        localRectF.set(0.0F, 0.0F, CropImageView.i(this.hiE).getWidth(), CropImageView.i(this.hiE).getHeight());
        localMatrix.mapRect(localRectF);
        CropImageView.a(this.hiE, localRectF.contains(CropImageView.w(this.hiE), CropImageView.x(this.hiE)));
        CropImageView.a(this.hiE, System.currentTimeMillis());
        return false;
      case 5:
        aa.d("MicroMsg.CropImageView", "action_mult_down");
        CropImageView.b(this.hiE, true);
        this.hiE.dqi = d.j(paramMotionEvent);
      case 6:
      case 2:
      case 1:
      }
    }
    while (this.hiE.dqi <= 5.0F);
    this.hiE.hik = true;
    d.a(CropImageView.h(this.hiE), paramMotionEvent);
    return true;
    aa.d("MicroMsg.CropImageView", "action_mult_up");
    this.hiE.hik = false;
    CropImageView.b(this.hiE, true);
    return true;
    aa.d("MicroMsg.CropImageView", "action_move");
    if (this.hiE.hik)
    {
      aa.d("MicroMsg.CropImageView", "is valid mult down");
      this.hiE.dqj = d.j(paramMotionEvent);
      float f3 = this.hiE.dqj - this.hiE.dqi;
      if ((this.hiE.dqj > 5.0F) && (Math.abs(f3) > 5.0F))
      {
        d.a(CropImageView.h(this.hiE), paramMotionEvent);
        aa.d("MicroMsg.CropImageView", "mX=" + CropImageView.h(this.hiE).x + ",mY=" + CropImageView.h(this.hiE).y);
        if (f3 <= 0.0F)
          break label698;
        aa.d("MicroMsg.CropImageView", "zoom in");
        this.hiE.aMZ();
      }
    }
    while (true)
    {
      this.hiE.dqi = this.hiE.dqj;
      if (!CropImageView.y(this.hiE))
      {
        float f1 = paramMotionEvent.getRawX() - CropImageView.w(this.hiE);
        float f2 = paramMotionEvent.getRawY() - CropImageView.x(this.hiE);
        if ((Math.abs(f1) > 5.0F) || (Math.abs(f2) > 5.0F))
          this.hiE.getImageMatrix().postTranslate(f1, f2);
        this.hiE.invalidate();
      }
      CropImageView.b(this.hiE, false);
      CropImageView.a(this.hiE, paramMotionEvent.getRawX());
      CropImageView.b(this.hiE, paramMotionEvent.getRawY());
      return false;
      label698: aa.d("MicroMsg.CropImageView", "zoom out");
      this.hiE.aNa();
    }
    aa.d("MicroMsg.CropImageView", "action_up");
    if (CropImageView.z(this.hiE))
    {
      CropImageView.c(this.hiE, false);
      if (CropImageView.A(this.hiE))
      {
        CropImageView.d(this.hiE, false);
        this.hiE.aNa();
        this.hiE.aNa();
        this.hiE.aNa();
        this.hiE.aNa();
        this.hiE.aNa();
        return false;
      }
      CropImageView.d(this.hiE, true);
      this.hiE.aMZ();
      this.hiE.aMZ();
      this.hiE.aMZ();
      this.hiE.aMZ();
      this.hiE.aMZ();
      return false;
    }
    CropImageView.c(this.hiE, true);
    CropImageView.a(this.hiE, new Timer());
    bj localbj = new bj(this, paramMotionEvent);
    CropImageView.B(this.hiE).schedule(localbj, 200L);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bi
 * JD-Core Version:    0.6.2
 */