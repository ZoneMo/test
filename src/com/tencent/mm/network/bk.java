package com.tencent.mm.network;

import android.content.Context;
import android.os.Handler;
import com.tencent.mm.network.a.a;

public final class bk
{
  private static bk cFs;
  private ao bZl;
  private bm cFt;
  private bn cFu;
  private Context cFv;
  private bl cFw;
  private bi cFx;
  private bh cFy;
  private a cFz;
  private Handler handler;

  private static bk Fa()
  {
    if (cFs == null)
      cFs = new bk();
    return cFs;
  }

  public static a Fb()
  {
    return Fa().cFz;
  }

  public static bm Fc()
  {
    return Fa().cFt;
  }

  public static bn Fd()
  {
    return Fa().cFu;
  }

  public static bl Fe()
  {
    return Fa().cFw;
  }

  public static ao Ff()
  {
    return Fa().bZl;
  }

  public static bi Fg()
  {
    return Fa().cFx;
  }

  public static bh Fh()
  {
    return Fa().cFy;
  }

  public static void a(Handler paramHandler)
  {
    Fa().handler = paramHandler;
  }

  public static void a(a parama)
  {
    Fa().cFz = parama;
  }

  public static void a(bh parambh)
  {
    Fa().cFy = parambh;
  }

  public static void a(bi parambi)
  {
    Fa().cFx = parambi;
  }

  public static void a(bl parambl)
  {
    Fa().cFw = parambl;
  }

  public static void a(bm parambm)
  {
    Fa().cFt = parambm;
  }

  public static void a(bn parambn)
  {
    Fa().cFu = parambn;
  }

  public static void e(ao paramao)
  {
    Fa().bZl = paramao;
  }

  public static Context getContext()
  {
    return Fa().cFv;
  }

  public static Handler getHandler()
  {
    return Fa().handler;
  }

  public static void setContext(Context paramContext)
  {
    Fa().cFv = paramContext;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.bk
 * JD-Core Version:    0.6.2
 */