package com.tencent.mm.ui.tools.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

abstract class a
{
  boolean EM;
  final String cnG;
  final ab hpN;
  final WeakReference hpO;
  final boolean hpP;
  final int hpQ;
  final Drawable hpR;
  final boolean hpS;

  a(Object paramObject, ab paramab, boolean paramBoolean1, boolean paramBoolean2, int paramInt, Drawable paramDrawable, String paramString)
  {
    this.hpN = paramab;
    this.hpO = new b(this, paramObject, u.aOH().hqA);
    this.hpP = paramBoolean1;
    this.hpQ = paramInt;
    this.hpR = paramDrawable;
    this.cnG = paramString;
    this.hpS = paramBoolean2;
  }

  abstract void a(Bitmap paramBitmap, s params);

  void cancel()
  {
    this.EM = true;
  }

  abstract void error();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.a.a
 * JD-Core Version:    0.6.2
 */