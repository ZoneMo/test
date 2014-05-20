package com.tencent.mm.pluginsdk.ui.tools;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.ArrayList;
import java.util.List;

public final class y
{
  private static List fuI = new ArrayList();

  public static List Au()
  {
    return fuI;
  }

  public static void a(z paramz)
  {
    if (paramz != null)
    {
      aa.d("MicroMsg.WebViewPluginCenter", "add, plugin name = " + paramz.getName());
      fuI.add(paramz);
    }
  }

  public static void clear()
  {
    aa.d("MicroMsg.WebViewPluginCenter", "clear");
    fuI.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.y
 * JD-Core Version:    0.6.2
 */