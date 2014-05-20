package com.tencent.mm.ui.tools;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import com.tencent.mm.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.MultiTouchImageView;
import com.tencent.mm.ui.base.d;

final class ct
  implements View.OnTouchListener
{
  ct(MMGestureGallery paramMMGestureGallery)
  {
  }

  private void aNu()
  {
    MMGestureGallery.d(this.hkX).aNx();
  }

  private void es(boolean paramBoolean)
  {
    MMGestureGallery.y(this.hkX).et(paramBoolean);
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    View localView1 = this.hkX.getSelectedView();
    if ((localView1 instanceof ViewGroup))
    {
      View localView2 = localView1.findViewById(i.aws);
      if ((localView2 == null) || (localView2.getVisibility() == 8))
      {
        if ((MMGestureGallery.e(this.hkX)) && (MMGestureGallery.f(this.hkX) != null) && (paramMotionEvent.getAction() == 1))
          es(true);
        return false;
      }
      localView1 = localView2.findViewById(i.awm);
      if (localView1 == null)
        return false;
    }
    label954: label973: float f1;
    float f2;
    float f3;
    if ((localView1 instanceof MultiTouchImageView))
    {
      MMGestureGallery.a(this.hkX, (MultiTouchImageView)localView1);
      aa.d("dktest", "MMGestureGallery onTouch event.getAction():" + paramMotionEvent.getAction());
      if (paramMotionEvent.getAction() == 0)
      {
        aNu();
        MMGestureGallery.d(this.hkX).aNv();
        MMGestureGallery.a(this.hkX).aHK();
        MMGestureGallery.a(this.hkX, 0.0F);
        MMGestureGallery.b(this.hkX, MMGestureGallery.a(this.hkX).getScale());
        aa.d("dktest", "originalScale :" + MMGestureGallery.g(this.hkX));
        MMGestureGallery.a(this.hkX, false);
        MMGestureGallery.h(this.hkX);
        if (MMGestureGallery.i(this.hkX) == 1)
        {
          MMGestureGallery.a(this.hkX, System.currentTimeMillis());
          MMGestureGallery.c(this.hkX, d.e(paramMotionEvent, 0));
          MMGestureGallery.d(this.hkX, d.f(paramMotionEvent, 0));
        }
      }
      else
      {
        if ((paramMotionEvent.getAction() == 6) || (paramMotionEvent.getAction() == 262))
        {
          aNu();
          MMGestureGallery.a(this.hkX, 0.0F);
          MMGestureGallery.b(this.hkX, MMGestureGallery.a(this.hkX).getScale());
          MMGestureGallery.a(this.hkX, true);
          if (MMGestureGallery.g(this.hkX) < MMGestureGallery.a(this.hkX).aHG())
          {
            float f5 = d.e(paramMotionEvent, 0) - d.e(paramMotionEvent, 1);
            float f6 = d.f(paramMotionEvent, 0) - d.f(paramMotionEvent, 1);
            MMGestureGallery.a(this.hkX).y(f5 + d.e(paramMotionEvent, 1), f6 + d.f(paramMotionEvent, 1));
          }
        }
        if (paramMotionEvent.getAction() == 1)
        {
          aNu();
          MMGestureGallery.n(this.hkX);
          MMGestureGallery.o(this.hkX);
          if (MMGestureGallery.p(this.hkX))
          {
            MMGestureGallery.q(this.hkX);
            MMGestureGallery.a(this.hkX, new cz(this.hkX));
            MMGestureGallery.r(this.hkX);
          }
          if (MMGestureGallery.s(this.hkX))
          {
            MMGestureGallery.t(this.hkX);
            MMGestureGallery.a(this.hkX, new db(this.hkX));
            MMGestureGallery.r(this.hkX);
          }
          MMGestureGallery.a(this.hkX, 0.0F);
          MMGestureGallery.b(this.hkX, MMGestureGallery.a(this.hkX).getScale());
          if (MMGestureGallery.i(this.hkX) == 1)
          {
            MMGestureGallery.c(this.hkX, System.currentTimeMillis());
            if (MMGestureGallery.k(this.hkX) - MMGestureGallery.u(this.hkX) >= 350L)
              break label954;
            if ((Math.abs(MMGestureGallery.l(this.hkX) - d.e(paramMotionEvent, 0)) < 10.0F) && (Math.abs(MMGestureGallery.m(this.hkX) - d.f(paramMotionEvent, 0)) < 10.0F))
              es(false);
          }
        }
      }
      while (true)
      {
        if ((paramMotionEvent.getAction() == 5) || (paramMotionEvent.getAction() == 261))
        {
          MMGestureGallery.a(this.hkX, 0.0F);
          MMGestureGallery.b(this.hkX, MMGestureGallery.a(this.hkX).getScale());
          MMGestureGallery.a(this.hkX, true);
        }
        if (paramMotionEvent.getAction() != 2)
          break label1057;
        if (d.l(paramMotionEvent) != 2)
          break label1120;
        aNu();
        if ((!MMGestureGallery.v(this.hkX)) && (!MMGestureGallery.p(this.hkX)) && (!MMGestureGallery.s(this.hkX)))
          break label973;
        return true;
        if (MMGestureGallery.i(this.hkX) != 2)
          break;
        MMGestureGallery.b(this.hkX, System.currentTimeMillis());
        if (MMGestureGallery.j(this.hkX) - MMGestureGallery.k(this.hkX) < 350L)
        {
          if ((Math.abs(MMGestureGallery.l(this.hkX) - d.e(paramMotionEvent, 0)) < 35.0F) && (Math.abs(MMGestureGallery.m(this.hkX) - d.f(paramMotionEvent, 0)) < 35.0F))
          {
            MMGestureGallery.a(this.hkX, 0);
            aa.d("MicroMsg.MMGestureGallery", "double click!");
            if (MMGestureGallery.a(this.hkX).getScale() <= MMGestureGallery.a(this.hkX).aHG())
            {
              MMGestureGallery.a(this.hkX).z(d.e(paramMotionEvent, 0), d.f(paramMotionEvent, 0));
              break;
            }
            MMGestureGallery.a(this.hkX).y(d.e(paramMotionEvent, 0), d.f(paramMotionEvent, 0));
            break;
          }
          MMGestureGallery.a(this.hkX, 1);
          break;
        }
        MMGestureGallery.a(this.hkX, 1);
        break;
        MMGestureGallery.a(this.hkX, 0);
        aa.d("MicroMsg.MMGestureGallery", "single long click over!");
      }
      MMGestureGallery.a(this.hkX, true);
      MMGestureGallery.a(this.hkX, 0);
      f1 = d.e(paramMotionEvent, 0) - d.e(paramMotionEvent, 1);
      f2 = d.f(paramMotionEvent, 0) - d.f(paramMotionEvent, 1);
      f3 = (float)Math.sqrt(f1 * f1 + f2 * f2);
      if (MMGestureGallery.w(this.hkX) != 0.0F)
        break label1059;
      MMGestureGallery.a(this.hkX, f3);
    }
    while (true)
    {
      label1057: return false;
      label1059: float f4 = f3 / MMGestureGallery.w(this.hkX);
      if (MMGestureGallery.x(this.hkX))
      {
        MMGestureGallery.a(this.hkX).c(f4 * MMGestureGallery.g(this.hkX), f1 + d.e(paramMotionEvent, 1), f2 + d.f(paramMotionEvent, 1));
        continue;
        label1120: if ((Math.abs(MMGestureGallery.l(this.hkX) - d.e(paramMotionEvent, 0)) > 10.0F) || (Math.abs(MMGestureGallery.m(this.hkX) - d.f(paramMotionEvent, 0)) > 10.0F))
        {
          aNu();
          MMGestureGallery.a(this.hkX, 0);
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ct
 * JD-Core Version:    0.6.2
 */