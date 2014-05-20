package com.tencent.mm.pluginsdk.c;

import com.tencent.mm.c.a.du;
import com.tencent.mm.c.a.dv;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.b.g;
import java.util.ArrayList;

public abstract class b extends g
{
  protected ArrayList fgJ = new ArrayList(3);

  public static void a(String paramString, b paramb)
  {
    if (!paramb.fgJ.contains(paramString))
      paramb.fgJ.add(paramString);
    a.ayH().a("NetSceneResponse", paramb);
    e.qi(paramString);
  }

  public static void b(String paramString, b paramb)
  {
    e.qj(paramString);
    a.ayH().b("NetSceneResponse", paramb);
    if (paramb.fgJ.contains(paramString))
      paramb.fgJ.remove(paramString);
  }

  public abstract void a(int paramInt1, int paramInt2, String paramString, com.tencent.mm.sdk.b.e parame);

  public final boolean a(com.tencent.mm.sdk.b.e parame)
  {
    if ((parame instanceof du))
    {
      du localdu = (du)parame;
      if ((localdu.bOL.bON != null) && (this.fgJ.contains(localdu.bOL.bON.getId())))
        a(localdu.bOL.bLI, localdu.bOL.bLJ, localdu.bOL.bOM, localdu.bOL.bON);
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c.b
 * JD-Core Version:    0.6.2
 */