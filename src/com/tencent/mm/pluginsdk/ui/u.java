package com.tencent.mm.pluginsdk.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m.af;
import com.tencent.mm.m.c;
import com.tencent.mm.m.m;
import com.tencent.mm.m.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ce;
import com.tencent.mm.ui.base.dn;

public final class u
{
  private static final Drawable fle = new ColorDrawable();
  private Activity dxC;
  private String fla = null;
  private String flb = null;
  private y flc;
  private ce fld;
  private GetHdHeadImageGalleryView flf;
  private x flg;
  private s flh;
  private String username;

  public u(Activity paramActivity, String paramString)
  {
    this(paramActivity, paramString, null);
  }

  public u(Activity paramActivity, String paramString1, String paramString2)
  {
    this(paramActivity, paramString1, paramString2, x.fll);
  }

  public u(Activity paramActivity, String paramString1, String paramString2, x paramx)
  {
    this(paramActivity, paramString1, paramString2, paramx, (byte)0);
  }

  private u(Activity paramActivity, String paramString1, String paramString2, x paramx, byte paramByte)
  {
    this.dxC = paramActivity;
    this.username = paramString1;
    this.flb = paramString2;
    this.flc = null;
    this.flg = paramx;
  }

  private void a(Bitmap paramBitmap, String paramString)
  {
    while (true)
    {
      try
      {
        if (paramBitmap.getWidth() < 480)
        {
          float f = 480 / paramBitmap.getWidth();
          Matrix localMatrix = new Matrix();
          localMatrix.postScale(f, f);
          localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);
          Object[] arrayOfObject = new Object[4];
          arrayOfObject[0] = Integer.valueOf(paramBitmap.getWidth());
          arrayOfObject[1] = Integer.valueOf(paramBitmap.getHeight());
          arrayOfObject[2] = Integer.valueOf(localBitmap.getWidth());
          arrayOfObject[3] = Integer.valueOf(localBitmap.getHeight());
          aa.e("MicroMsg.GetHdHeadImg", "dkhdbm old[%d %d] new[%d %d]", arrayOfObject);
          this.flf.j(localBitmap);
          this.flf.qD(paramString);
          return;
        }
      }
      catch (Exception localException)
      {
        return;
      }
      Bitmap localBitmap = paramBitmap;
    }
  }

  public final void arp()
  {
    View localView = LayoutInflater.from(this.dxC).inflate(k.aUU, null);
    this.fld = new ce(localView, -1, -1);
    switch (w.flk[this.flg.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      this.fld.setFocusable(true);
      this.fld.setOutsideTouchable(true);
      this.fld.setBackgroundDrawable(fle);
      this.fld.showAtLocation(this.dxC.getWindow().getDecorView(), 49, 0, 0);
      this.flf = ((GetHdHeadImageGalleryView)localView.findViewById(i.atP));
      this.flf.a(this.fld);
      this.flf.setUsername(this.username);
      if (be.uz().isSDCardAvailable())
        break;
      dn.bW(this.dxC);
      a(af.vJ().K(this.dxC), null);
      return;
      this.fld.setAnimationStyle(o.bIz);
      continue;
      this.fld.setAnimationStyle(o.bIA);
      continue;
      this.fld.setAnimationStyle(o.bIy);
    }
    Bitmap localBitmap1;
    if (!cj.hX(this.flb))
    {
      localBitmap1 = com.tencent.mm.p.u.b(this.username, this.flb, h.agn);
      if (localBitmap1 == null)
        localBitmap1 = BitmapFactory.decodeResource(this.dxC.getResources(), h.adI);
      if ((localBitmap1 == null) || (localBitmap1.isRecycled()))
        break label406;
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.username;
      aa.d("MicroMsg.GetHdHeadImg", "The avatar of %s is in the cache", arrayOfObject3);
      this.flf.setThumbImage(localBitmap1);
    }
    while (true)
    {
      if (!cj.hX(this.fla))
        this.username = this.fla;
      Bitmap localBitmap2 = af.vJ().eg(this.username);
      if ((localBitmap2 == null) || (localBitmap2.isRecycled()))
        break label430;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.username;
      aa.d("MicroMsg.GetHdHeadImg", "The HDAvatar of %s is already exists", arrayOfObject2);
      a(localBitmap2, af.vJ().h(this.username, true));
      return;
      localBitmap1 = c.a(this.username, true, -1);
      break;
      label406: Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = this.username;
      aa.d("MicroMsg.GetHdHeadImg", "The avatar of %s is not in the cache, use default avatar", arrayOfObject1);
    }
    label430: this.flh = new s();
    this.flh.a(this.username, new v(this, localBitmap1));
  }

  public final void dismiss()
  {
    if (this.fld != null)
      this.fld.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.u
 * JD-Core Version:    0.6.2
 */