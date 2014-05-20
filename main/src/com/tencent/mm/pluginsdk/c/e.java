package com.tencent.mm.pluginsdk.c;

import com.tencent.mm.c.a.go;
import com.tencent.mm.sdk.b.a;
import com.tencent.mm.sdk.b.f;

public final class e
{
  public static go qi(String paramString)
  {
    go localgo = new go();
    localgo.bQJ.bOd = 1;
    localgo.bQJ.bQK = paramString;
    a.ayH().f(localgo);
    return localgo;
  }

  public static void qj(String paramString)
  {
    go localgo = new go();
    localgo.bQJ.bOd = 2;
    localgo.bQJ.bQK = paramString;
    a.ayH().f(localgo);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.c.e
 * JD-Core Version:    0.6.2
 */