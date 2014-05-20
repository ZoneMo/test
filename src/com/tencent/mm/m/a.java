package com.tencent.mm.m;

import android.graphics.Bitmap;
import com.tencent.mm.a.d;

final class a
{
  private d ckh;

  public a(int paramInt)
  {
    this.ckh = new d(paramInt, new b(this));
  }

  public final void b(String paramString, Bitmap paramBitmap)
  {
    if (this.ckh != null)
    {
      this.ckh.f(paramString, paramBitmap);
      return;
    }
    com.tencent.mm.cache.b.a("avatar_cache", paramString, paramBitmap);
  }

  public final Bitmap dO(String paramString)
  {
    if (this.ckh != null)
      return (Bitmap)this.ckh.get(paramString);
    return (Bitmap)com.tencent.mm.cache.b.k("avatar_cache", paramString);
  }

  public final void remove(String paramString)
  {
    if (this.ckh != null)
    {
      this.ckh.remove(paramString);
      return;
    }
    com.tencent.mm.cache.b.l("avatar_cache", paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.a
 * JD-Core Version:    0.6.2
 */