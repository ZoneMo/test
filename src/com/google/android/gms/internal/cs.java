package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.images.a;
import java.lang.ref.WeakReference;

public final class cs
{
  public int LL;
  public final ct Qs;
  private int Qt;
  private int Qu;
  private WeakReference Qv;
  private WeakReference Qw;
  private WeakReference Qx;
  private int Qy;
  private boolean Qz;

  private static cu a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    if (paramDrawable1 != null)
      if (!(paramDrawable1 instanceof cu));
    for (paramDrawable1 = ((cu)paramDrawable1).la(); ; paramDrawable1 = null)
      return new cu(paramDrawable1, paramDrawable2);
  }

  private void b(Drawable paramDrawable, boolean paramBoolean)
  {
    int i = 1;
    ImageView localImageView;
    label76: boolean bool2;
    switch (this.LL)
    {
    default:
    case 1:
    case 2:
      int m;
      do
      {
        do
        {
          do
            return;
          while ((a)this.Qv.get() == null);
          return;
          localImageView = (ImageView)this.Qw.get();
        }
        while (localImageView == null);
        if (paramBoolean)
          break label209;
        if ((i == 0) || (!(localImageView instanceof cy)))
          break;
        m = ((cy)localImageView).ld();
      }
      while ((this.Qt != 0) && (m == this.Qt));
      bool2 = kZ();
      if (!bool2)
        break;
    case 3:
    }
    for (Object localObject6 = a(localImageView.getDrawable(), paramDrawable); ; localObject6 = paramDrawable)
    {
      localImageView.setImageDrawable((Drawable)localObject6);
      cy localcy;
      Uri localUri;
      if ((localImageView instanceof cy))
      {
        localcy = (cy)localImageView;
        if (!paramBoolean)
          break label214;
        localUri = this.Qs.uri;
        label171: localcy.e(localUri);
        if (i == 0)
          break label220;
      }
      label209: label214: label220: for (int k = this.Qt; ; k = 0)
      {
        localcy.aX(k);
        if (!bool2)
          break;
        ((cu)localObject6).lb();
        return;
        i = 0;
        break label76;
        localUri = null;
        break label171;
      }
      TextView localTextView = (TextView)this.Qx.get();
      if (localTextView == null)
        break;
      int j = this.Qy;
      boolean bool1 = kZ();
      Drawable[] arrayOfDrawable;
      Drawable localDrawable;
      if (ai.iC())
      {
        arrayOfDrawable = localTextView.getCompoundDrawablesRelative();
        localDrawable = arrayOfDrawable[j];
        if (!bool1)
          break label422;
      }
      label388: label397: label406: label420: label422: for (Object localObject1 = a(localDrawable, paramDrawable); ; localObject1 = paramDrawable)
      {
        Object localObject2;
        label297: Object localObject3;
        label307: Object localObject4;
        label317: Object localObject5;
        if (j == 0)
        {
          localObject2 = localObject1;
          if (j != i)
            break label379;
          localObject3 = localObject1;
          if (j != 2)
            break label388;
          localObject4 = localObject1;
          if (j != 3)
            break label397;
          localObject5 = localObject1;
          label327: if (!ai.iC())
            break label406;
          localTextView.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable)localObject2, (Drawable)localObject3, (Drawable)localObject4, (Drawable)localObject5);
        }
        while (true)
        {
          if (!bool1)
            break label420;
          ((cu)localObject1).lb();
          return;
          arrayOfDrawable = localTextView.getCompoundDrawables();
          break;
          localObject2 = arrayOfDrawable[0];
          break label297;
          label379: localObject3 = arrayOfDrawable[i];
          break label307;
          localObject4 = arrayOfDrawable[2];
          break label317;
          localObject5 = arrayOfDrawable[3];
          break label327;
          localTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable)localObject2, (Drawable)localObject3, (Drawable)localObject4, (Drawable)localObject5);
        }
        break;
      }
    }
  }

  private boolean kZ()
  {
    return this.Qz;
  }

  public final void a(Context paramContext, Bitmap paramBitmap)
  {
    cz.P(paramBitmap);
    b(new BitmapDrawable(paramContext.getResources(), paramBitmap), true);
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof cs));
    do
    {
      return false;
      if (this == paramObject)
        return true;
    }
    while (((cs)paramObject).hashCode() != hashCode());
    return true;
  }

  public final int hashCode()
  {
    return this.Qu;
  }

  public final void l(Context paramContext)
  {
    int i = this.Qt;
    Drawable localDrawable = null;
    if (i != 0)
      localDrawable = paramContext.getResources().getDrawable(this.Qt);
    b(localDrawable, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cs
 * JD-Core Version:    0.6.2
 */