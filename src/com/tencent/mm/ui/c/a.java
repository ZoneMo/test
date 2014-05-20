package com.tencent.mm.ui.c;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import b.a.d.i;
import b.a.d.k;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bi;
import com.tencent.mm.storage.bj;
import java.util.ArrayList;
import java.util.List;

@SuppressLint({"HandlerLeak"})
public final class a
  implements j
{
  private Context context = null;
  private Handler ezK = new b(this);
  private b.a.e.b hrZ = null;
  private i hsa = null;
  private i hsb = null;
  private boolean hsc = false;
  private boolean hsd = false;
  public f hse = null;
  public e hsf = null;

  public a()
  {
    String str1 = (String)be.uz().sr().get(69377);
    String str2 = (String)be.uz().sr().get(69378);
    if ((cj.hX(str1)) || (cj.hX(str2)));
    for (i locali = null; ; locali = new i(str1, str2))
    {
      this.hsa = locali;
      return;
    }
  }

  private static void a(i parami)
  {
    al.getContext().getSharedPreferences(al.azs(), 0);
    if (parami == null)
    {
      be.uz().sr().set(69377, "");
      be.uz().sr().set(69378, "");
      return;
    }
    be.uz().sr().set(69377, parami.ank());
    be.uz().sr().set(69378, parami.aRw());
  }

  private void c(g paramg)
  {
    this.hsc = false;
    this.hsb = null;
    if (this.hse != null)
      this.hse.a(paramg);
  }

  private static void ez(boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramBoolean);
    for (String str = "1"; ; str = "2")
    {
      localArrayList.add(new bj(10251, str));
      be.uz().st().a(new bi(localArrayList));
      return;
    }
  }

  public final void a(e parame)
  {
    if (this.hsd)
      return;
    this.hsf = parame;
    this.hsd = true;
    new d(this).start();
  }

  public final void a(f paramf, Context paramContext)
  {
    if (this.hsc)
      return;
    this.hse = paramf;
    this.context = paramContext;
    this.hsc = true;
    new c(this).start();
  }

  public final boolean aPc()
  {
    return this.hsa != null;
  }

  public final void aPd()
  {
    ez(false);
    c(g.hsi);
  }

  public final i ajq()
  {
    return this.hsa;
  }

  public final void e(Bundle paramBundle)
  {
    ez(true);
    String str = paramBundle.getString("oauth_verifier");
    Object localObject = null;
    k localk;
    if (str != null)
      localk = new k(str);
    try
    {
      i locali = this.hrZ.a(this.hsb, localk);
      localObject = locali;
      if (localObject != null)
      {
        this.hsa = localObject;
        a(this.hsa);
        c(g.hsh);
        return;
      }
      c(g.hsi);
      return;
    }
    catch (b.a.b.a locala)
    {
      while (true)
        localObject = null;
    }
  }

  public final void onCancel()
  {
    ez(false);
    c(g.hsj);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.c.a
 * JD-Core Version:    0.6.2
 */