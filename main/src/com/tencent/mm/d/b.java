package com.tencent.mm.d;

import android.os.Looper;
import com.tencent.mm.c.a.hj;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import com.tencent.mm.sdk.platformtools.ay;

public final class b
{
  private hj caQ;
  private g caR = new c(this);
  private ay caS = new ay(Looper.myLooper(), new d(this), true);

  public final void init()
  {
    a.ayH().a("Broadcast", this.caR);
    this.caQ = new hj();
    this.caQ.bRf.desc = "";
    this.caQ.bRf.url = "";
    this.caQ.bRf.bLY = 0;
    this.caQ.bRf.bLX = 30;
    this.caQ.bRf.visible = false;
    this.caQ.bRf.bMa = "";
    this.caQ.bRf.bLZ = 0;
    this.caQ.bRf.bMb = 2130903544;
  }

  public final void oV()
  {
    a.ayH().b("Broadcast", this.caR);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.d.b
 * JD-Core Version:    0.6.2
 */