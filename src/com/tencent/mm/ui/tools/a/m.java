package com.tencent.mm.ui.tools.a;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

final class m
  implements ViewTreeObserver.OnPreDrawListener
{
  final WeakReference hpO;
  final ad hqi;
  final Boolean hqj;
  g hqk;

  m(ad paramad, ImageView paramImageView, Boolean paramBoolean, g paramg)
  {
    this.hqi = paramad;
    this.hpO = new WeakReference(paramImageView);
    this.hqk = paramg;
    this.hqj = paramBoolean;
    paramImageView.getViewTreeObserver().addOnPreDrawListener(this);
  }

  final void cancel()
  {
    this.hqk = null;
    ImageView localImageView = (ImageView)this.hpO.get();
    if (localImageView == null);
    ViewTreeObserver localViewTreeObserver;
    do
    {
      return;
      localViewTreeObserver = localImageView.getViewTreeObserver();
    }
    while (!localViewTreeObserver.isAlive());
    localViewTreeObserver.removeOnPreDrawListener(this);
  }

  public final boolean onPreDraw()
  {
    ImageView localImageView = (ImageView)this.hpO.get();
    if (localImageView == null);
    ViewTreeObserver localViewTreeObserver;
    int i;
    int j;
    do
    {
      do
      {
        return true;
        localViewTreeObserver = localImageView.getViewTreeObserver();
      }
      while (!localViewTreeObserver.isAlive());
      i = localImageView.getMeasuredWidth();
      j = localImageView.getMeasuredHeight();
    }
    while ((i <= 0) || (j <= 0));
    localViewTreeObserver.removeOnPreDrawListener(this);
    if (this.hqj.booleanValue())
    {
      this.hqi.aOT().bp(i, j).aOV().a(localImageView, this.hqk);
      return true;
    }
    this.hqi.aOT().bp(i, j).a(localImageView, this.hqk);
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.m
 * JD-Core Version:    0.6.2
 */