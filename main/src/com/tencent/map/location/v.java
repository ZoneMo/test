package com.tencent.map.location;

import android.content.Context;
import android.os.Message;
import android.telephony.TelephonyManager;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class v extends Thread
{
  private z UH = null;
  private m Uh = null;
  private q Ux = null;

  v(s params, q paramq, m paramm, z paramz)
  {
    if (paramq != null)
      this.Ux = ((q)paramq.clone());
    if (paramm != null)
      this.Uh = ((m)paramm.clone());
    if (paramz != null)
      this.UH = ((z)paramz.clone());
  }

  public final void run()
  {
    if (!s.lZ());
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)s.k(this.UF).getSystemService("phone");
      s.c(this.UF, localTelephonyManager.getDeviceId());
      s.d(this.UF, localTelephonyManager.getSubscriberId());
      s.e(this.UF, localTelephonyManager.getLine1Number());
      Pattern localPattern = Pattern.compile("[0-9a-zA-Z+-]*");
      s locals5 = this.UF;
      String str12;
      String str17;
      label135: label143: String str13;
      label163: String str16;
      label209: label217: String str14;
      label237: String str15;
      label283: label291: String str8;
      label315: String str9;
      label343: String str10;
      label371: String str11;
      label399: String str1;
      label429: String str2;
      String str3;
      if (s.l(this.UF) == null)
      {
        str12 = "";
        s.c(locals5, str12);
        if (!localPattern.matcher(s.l(this.UF)).matches())
          break label701;
        s locals10 = this.UF;
        if (s.l(this.UF) != null)
          break label689;
        str17 = "";
        s.c(locals10, str17);
        s locals6 = this.UF;
        if (s.m(this.UF) != null)
          break label714;
        str13 = "";
        s.d(locals6, str13);
        if (!localPattern.matcher(s.m(this.UF)).matches())
          break label738;
        s locals9 = this.UF;
        if (s.m(this.UF) != null)
          break label726;
        str16 = "";
        s.d(locals9, str16);
        s locals7 = this.UF;
        if (s.n(this.UF) != null)
          break label751;
        str14 = "";
        s.e(locals7, str14);
        if (!localPattern.matcher(s.n(this.UF)).matches())
          break label775;
        s locals8 = this.UF;
        if (s.n(this.UF) != null)
          break label763;
        str15 = "";
        s.e(locals8, str15);
        s.mg();
        s locals1 = this.UF;
        if (s.l(this.UF) != null)
          break label788;
        str8 = "";
        s.c(locals1, str8);
        s locals2 = this.UF;
        if (s.m(this.UF) != null)
          break label800;
        str9 = "";
        s.d(locals2, str9);
        s locals3 = this.UF;
        if (s.n(this.UF) != null)
          break label812;
        str10 = "";
        s.e(locals3, str10);
        s locals4 = this.UF;
        if (s.l(this.UF) != null)
          break label824;
        str11 = "0123456789ABCDEF";
        s.f(locals4, ad.a(str11));
        if (s.o(this.UF) != 4)
          break label836;
        str1 = ac.b(this.UH);
        str2 = ac.a(this.Uh, s.p(this.UF).lY());
        str3 = ac.a(s.l(this.UF), s.m(this.UF), s.n(this.UF), s.q(this.UF), s.r(this.UF));
        if ((this.Ux == null) || (!this.Ux.lZ()))
          break label842;
      }
      label689: label701: label836: label842: for (String str4 = ac.b(this.Ux); ; str4 = "{}")
      {
        String str5 = "{\"version\":\"1.9.0\",\"address\":" + s.s(this.UF);
        String str6 = str5 + ",\"source\":203,\"access_token\":\"" + s.t(this.UF) + "\",\"app_name\":\"" + s.u(this.UF) + "\",\"bearing\":1";
        String str7 = str6 + ",\"attribute\":" + str3 + ",\"location\":" + str4 + ",\"cells\":" + str2 + ",\"wifis\":" + str1 + "}";
        Message localMessage = s.d(this.UF).obtainMessage(16, str7);
        s.d(this.UF).sendMessage(localMessage);
        return;
        str12 = s.l(this.UF);
        break;
        str17 = s.l(this.UF);
        break label135;
        s.c(this.UF, "");
        break label143;
        label714: str13 = s.m(this.UF);
        break label163;
        label726: str16 = s.m(this.UF);
        break label209;
        label738: s.d(this.UF, "");
        break label217;
        label751: str14 = s.n(this.UF);
        break label237;
        label763: str15 = s.n(this.UF);
        break label283;
        s.e(this.UF, "");
        break label291;
        str8 = s.l(this.UF);
        break label315;
        str9 = s.m(this.UF);
        break label343;
        str10 = s.n(this.UF);
        break label371;
        str11 = s.l(this.UF);
        break label399;
        str1 = "[]";
        break label429;
      }
    }
    catch (Exception localException)
    {
      label775: label788: label800: label812: label824: break label291;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.v
 * JD-Core Version:    0.6.2
 */