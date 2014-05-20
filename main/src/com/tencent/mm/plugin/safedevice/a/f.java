package com.tencent.mm.plugin.safedevice.a;

import com.tencent.mm.model.b;
import com.tencent.mm.model.bb;
import com.tencent.mm.model.be;
import com.tencent.mm.model.dr;
import java.util.HashMap;

public class f
  implements bb
{
  private static HashMap dnW;
  private d dZW;
  private com.tencent.mm.sdk.b.g dZX = new h(this);

  static
  {
    HashMap localHashMap = new HashMap();
    dnW = localHashMap;
    localHashMap.put(Integer.valueOf("SAFE_DEVICE_INFO_TABLE".hashCode()), new g());
  }

  private static f Zt()
  {
    f localf = (f)be.uh().dN(f.class.getName());
    if (localf == null)
    {
      localf = new f();
      be.uh().a(f.class.getName(), localf);
    }
    return localf;
  }

  public static d Zu()
  {
    if (be.uz().sd() == 0)
      throw new com.tencent.mm.model.a();
    if (Zt().dZW == null)
      Zt().dZW = new d(be.uz().sp());
    return Zt().dZW;
  }

  public final void N(boolean paramBoolean)
  {
    com.tencent.mm.sdk.b.a.ayH().a("UpdateLocalSafeDevice", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().a("UpdateLocalVerifySwitch", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().a("GetSafeDeviceName", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().a("GetSafeDeviceType", this.dZX);
  }

  public final void bJ(int paramInt)
  {
  }

  public final void p(String paramString1, String paramString2)
  {
  }

  public final void qy()
  {
    com.tencent.mm.sdk.b.a.ayH().b("UpdateLocalSafeDevice", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().b("UpdateLocalVerifySwitch", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().b("GetSafeDeviceName", this.dZX);
    com.tencent.mm.sdk.b.a.ayH().b("GetSafeDeviceType", this.dZX);
  }

  public final HashMap qz()
  {
    return dnW;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.safedevice.a.f
 * JD-Core Version:    0.6.2
 */