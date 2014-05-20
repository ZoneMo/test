package com.tencent.mm.pluginsdk;

import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.e.am;
import java.util.HashMap;
import java.util.Map;

public final class as extends ah
{
  public static final String[] cjC = arrayOfString;
  private af crf;
  private am fgF = new at(this);
  private final Map fgG = new HashMap();
  private final Map fgH = new HashMap();

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(ar.cfX, "PluginInfo");
  }

  public as(af paramaf)
  {
    super(paramaf, ar.cfX, "PluginInfo", null);
    this.crf = paramaf;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.as
 * JD-Core Version:    0.6.2
 */