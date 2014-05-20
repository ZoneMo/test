package com.tencent.mm.pluginsdk.ui;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import java.util.Map;

public final class g
{
  private int fka = -7829368;
  private boolean fkb = false;
  private int fkc = -1593835521;
  private boolean fkd = false;
  private int fke = -16777216;
  private boolean fkf = false;
  private int fkg = 0;
  private boolean fkh = false;
  private int version = 0;

  public g(String paramString)
  {
    Map localMap = u.aL(paramString, "chatbg");
    String str = "." + "chatbg";
    try
    {
      this.version = cj.c(Integer.valueOf((String)localMap.get(str + ".$version")));
      this.fka = ((int)cj.a(Long.valueOf(Long.parseLong((String)localMap.get(str + ".$time_color"), 16)), -7829368L));
      this.fkb = cj.c(Boolean.valueOf((String)localMap.get(str + ".$time_show_shadow_color")));
      this.fkc = ((int)cj.a(Long.valueOf(Long.parseLong((String)localMap.get(str + ".$time_shadow_color"), 16)), 0L));
      this.fkd = cj.c(Boolean.valueOf((String)localMap.get(str + ".$time_show_background")));
      this.fke = ((int)cj.a(Long.valueOf(Long.parseLong((String)localMap.get(str + ".$voice_second_color"), 16)), -16777216L));
      this.fkf = cj.c(Boolean.valueOf((String)localMap.get(str + ".$voice_second_show_shadow_color")));
      this.fkg = ((int)cj.a(Long.valueOf(Long.parseLong((String)localMap.get(str + ".$voice_second_shadow_color"), 16)), 0L));
      this.fkh = cj.c(Boolean.valueOf((String)localMap.get(str + ".$voice_second_show_background")));
      return;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.ChatBgAttr", "parse chatbgattr failed");
    }
  }

  public final int aqQ()
  {
    return this.fka;
  }

  public final int aqR()
  {
    return this.fkc;
  }

  public final boolean aqS()
  {
    return this.fkd;
  }

  public final int aqT()
  {
    return this.fke;
  }

  public final int aqU()
  {
    return this.fkg;
  }

  public final boolean aqV()
  {
    return this.fkh;
  }

  public final boolean aqW()
  {
    return this.fkb;
  }

  public final boolean aqX()
  {
    return this.fkf;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.g
 * JD-Core Version:    0.6.2
 */