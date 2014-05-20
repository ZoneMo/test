package com.tencent.mm.platformtools;

import android.graphics.Bitmap;
import com.tencent.mm.compatible.g.i;
import com.tencent.mm.sdk.platformtools.cj;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.Vector;

public final class v
{
  private static LinkedList cGB = new LinkedList();
  private static Vector ckE = new Vector();

  public static Bitmap a(s params)
  {
    if (!b(params))
      return null;
    if (!i.qd())
      return params.Fx();
    if (params.Fw())
      return x.a(x.cGC, params);
    return x.b(x.cGC, params);
  }

  public static boolean a(w paramw)
  {
    return ckE.add(new WeakReference(paramw));
  }

  private static boolean b(s params)
  {
    return (params != null) && (!cj.hX(params.Fs()));
  }

  public static boolean b(w paramw)
  {
    cGB.remove(paramw);
    return cGB.add(paramw);
  }

  public static boolean c(w paramw)
  {
    return cGB.remove(paramw);
  }

  public static Bitmap hN(String paramString)
  {
    return x.hN(paramString);
  }

  public static Bitmap p(String paramString, int paramInt1, int paramInt2)
  {
    return x.p(paramString, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.v
 * JD-Core Version:    0.6.2
 */