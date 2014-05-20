package com.tencent.mm.ui.tools.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;

public final class ad
{
  private boolean hpP = true;
  private int hpQ;
  private Drawable hpR;
  private boolean hpS = false;
  private final ac hqS;
  private int hqT;
  private boolean hqU;
  private Drawable hqV;

  ad()
  {
    this.hqS = new ac();
  }

  ad(l paraml)
  {
    this.hqS = new ac(paraml);
  }

  public final void a(ImageView paramImageView, g paramg)
  {
    if (paramImageView == null)
      throw new IllegalArgumentException("Target must not be null.");
    if (!this.hqS.aOO())
    {
      u.aOH().an(paramImageView);
      z.a(paramImageView, this.hqT, this.hqV);
      return;
    }
    if (this.hqU)
    {
      if (this.hqS.aOM())
        throw new IllegalStateException("Fit cannot be used with resized");
      int i = paramImageView.getMeasuredWidth();
      int j = paramImageView.getMeasuredHeight();
      if ((j == 0) && (i == 0))
      {
        z.a(paramImageView, this.hqT, this.hqV);
        u.aOH().a(paramImageView, new m(this, paramImageView, Boolean.valueOf(this.hpS), paramg));
        return;
      }
      this.hqS.bo(i, j);
    }
    ab localab = this.hqS.aOQ();
    StringBuilder localStringBuilder;
    if (localab.uri != null)
    {
      String str3 = localab.uri.toString();
      localStringBuilder = new StringBuilder(50 + str3.length());
      localStringBuilder.append(str3);
      label191: localStringBuilder.append('\n');
      if (localab.hqO != 0.0F)
      {
        localStringBuilder.append("rotation:").append(localab.hqO);
        if (localab.hqR)
          localStringBuilder.append('@').append(localab.hqP).append('x').append(localab.hqQ);
        localStringBuilder.append('\n');
      }
      if (localab.dhY != 0)
      {
        localStringBuilder.append("resize:").append(localab.dhY).append('x').append(localab.dhZ);
        localStringBuilder.append('\n');
      }
      if (!localab.hqM)
        break label464;
      localStringBuilder.append("centerCrop\n");
    }
    String str1;
    while (true)
    {
      str1 = localStringBuilder.toString();
      Bitmap localBitmap = u.aOH().xW(str1);
      if ((localBitmap == null) || (this.hpS))
        break label482;
      u.aOH().an(paramImageView);
      z.a(paramImageView, u.aOH().context, localBitmap, s.hqr, this.hpP, u.aOH().hqB);
      if (paramg == null)
        break;
      paramg.p(localBitmap);
      return;
      if (localab.hqL != null)
      {
        String str2 = localab.hqL.getKey();
        localStringBuilder = new StringBuilder(50 + str2.length());
        localStringBuilder.append(str2);
        break label191;
      }
      localStringBuilder = new StringBuilder(50);
      localStringBuilder.append(localab.resourceId);
      break label191;
      label464: if (localab.hqN)
        localStringBuilder.append("centerInside\n");
    }
    label482: z.a(paramImageView, this.hqT, this.hqV);
    r localr = new r(paramImageView, this.hqS.aOQ(), this.hpP, this.hpS, this.hpQ, this.hpR, str1, paramg);
    u.aOH().c(localr);
  }

  public final ad aOR()
  {
    if (this.hpR != null)
      throw new IllegalStateException("Error image already set.");
    this.hpQ = 2130838946;
    return this;
  }

  public final ad aOS()
  {
    this.hqU = true;
    return this;
  }

  final ad aOT()
  {
    this.hqU = false;
    return this;
  }

  public final ad aOU()
  {
    this.hqS.aOP();
    return this;
  }

  public final ad aOV()
  {
    this.hpS = true;
    return this;
  }

  public final ad bp(int paramInt1, int paramInt2)
  {
    this.hqS.bo(paramInt1, paramInt2);
    return this;
  }

  public final void e(ImageView paramImageView)
  {
    a(paramImageView, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.ad
 * JD-Core Version:    0.6.2
 */