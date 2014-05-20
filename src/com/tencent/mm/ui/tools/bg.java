package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.d;

final class bg extends Handler
{
  bg(CropImageView paramCropImageView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    aa.d("MicroMsg.CropImageView", "on handler");
    if (paramMessage.what == 4659)
      this.hiE.aMZ();
    do
      while (true)
      {
        super.handleMessage(paramMessage);
        return;
        if (paramMessage.what == 4658)
        {
          this.hiE.aNa();
        }
        else
        {
          if (paramMessage.what != 4660)
            break;
          if ((CropImageView.a(this.hiE) != null) && (CropImageView.b(this.hiE) != null))
          {
            CropImageView.b(this.hiE).cancel();
            CropImageView.c(this.hiE);
          }
        }
      }
    while (paramMessage.what != 4661);
    MotionEvent localMotionEvent = (MotionEvent)paramMessage.obj;
    CropImageView.a(this.hiE, System.currentTimeMillis());
    CropImageView.a(this.hiE, false);
    if ((localMotionEvent.getRawX() - CropImageView.d(this.hiE) > 10.0F) || (localMotionEvent.getRawY() - CropImageView.e(this.hiE) > 10.0F) || (localMotionEvent.getRawX() - CropImageView.d(this.hiE) < -10.0F) || (localMotionEvent.getRawY() - CropImageView.e(this.hiE) < -10.0F));
    for (int i = 0; ; i = 1)
    {
      if (i != 0)
      {
        long l = System.currentTimeMillis();
        if ((CropImageView.f(this.hiE) != 0L) && (l - CropImageView.f(this.hiE) < 300L) && (l - CropImageView.f(this.hiE) >= 0L) && (CropImageView.g(this.hiE) != null))
          CropImageView.g(this.hiE).aMT();
        CropImageView.a(this.hiE, 0L);
      }
      d.a(CropImageView.h(this.hiE), CropImageView.i(this.hiE));
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bg
 * JD-Core Version:    0.6.2
 */