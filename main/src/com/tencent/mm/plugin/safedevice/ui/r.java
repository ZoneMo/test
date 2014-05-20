package com.tencent.mm.plugin.safedevice.ui;

import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.safedevice.a.c;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.v;

final class r
  implements v
{
  r(SafeDeviceListPreference paramSafeDeviceListPreference)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
    }
    SafeDeviceListPreference.a(this.eau);
    com.tencent.mm.plugin.safedevice.a.a locala = new com.tencent.mm.plugin.safedevice.a.a(this.eau.Zx().field_uid);
    be.uA().d(locala);
    SafeDeviceListPreference.a(this.eau, h.a(SafeDeviceListPreference.b(this.eau), com.tencent.mm.an.a.m(SafeDeviceListPreference.b(this.eau), n.beu), true, new s(this, locala)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.ui.r
 * JD-Core Version:    0.6.2
 */