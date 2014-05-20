package com.tencent.mm.pluginsdk.ui.applet;

import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.pluginsdk.model.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;
import java.util.LinkedList;
import junit.framework.Assert;

public final class a
  implements m
{
  private ch cHU;
  private Context context;
  private LinkedList dVq;
  private LinkedList dVr;
  private String fnA = "";
  private boolean fnB = false;
  private String fnC = "";
  private f fny;
  private String fnz;

  public a(Context paramContext, f paramf)
  {
    a(paramContext, paramf);
  }

  public a(Context paramContext, f paramf, String paramString)
  {
    a(paramContext, paramf);
    this.fnB = true;
    this.fnC = paramString;
  }

  private void a(Context paramContext, f paramf)
  {
    this.context = paramContext;
    this.fny = paramf;
    this.dVq = new LinkedList();
    this.cHU = null;
  }

  private void c(boolean paramBoolean1, boolean paramBoolean2, String paramString1, String paramString2)
  {
    if (this.fny != null)
      this.fny.a(paramBoolean1, paramBoolean2, paramString1, paramString2);
  }

  private void onStart()
  {
    be.uA().a(30, this);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.d("MicroMsg.AddContact", "onSceneEnd, errType = " + paramInt1 + ", errCode = " + paramInt2);
    if (paramx.getType() != 30)
      aa.w("MicroMsg.AddContact", "not expected scene,  type = " + paramx.getType());
    int i;
    do
    {
      return;
      if (this.cHU != null)
      {
        this.cHU.dismiss();
        this.cHU = null;
      }
      be.uA().b(30, this);
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        this.fnA = ((j)paramx).apG();
        c(true, false, this.fnA, this.fnC);
        return;
      }
      if (paramInt2 == -44)
      {
        an localan = new an(this.context, new e(this));
        if (this.fnz != null)
          localan.qF(this.fnz);
        if (this.fnB)
        {
          localan.d(this.dVq, this.dVr);
          return;
        }
        localan.c(this.dVq, this.dVr);
        return;
      }
      if (paramInt2 == -87)
      {
        h.p(this.context, this.context.getString(n.bhB), "");
        return;
      }
      if ((paramInt2 == -101) && (!cj.hX(paramString)))
      {
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt2);
        arrayOfObject2[1] = paramString;
        aa.e("MicroMsg.AddContact", "jacks catch add Contact errCode: %d && errMsg: %s", arrayOfObject2);
        h.p(this.context, paramString, "");
        return;
      }
      if (paramInt2 != -302)
        break;
      i = ((j)paramx).apI();
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(i);
      aa.e("MicroMsg.AddContact", "onSceneEnd, verify relation out of date, opCode = %d", arrayOfObject1);
    }
    while (i != 3);
    h.a(this.context, this.context.getString(n.biz), this.context.getString(n.ber), this.context.getString(n.bdr), this.context.getString(n.bds), new d(this, paramx), null);
    return;
    if ((paramInt1 == 4) && (paramInt2 == -22))
      Toast.makeText(this.context, this.context.getString(n.bcV), 1).show();
    while (true)
    {
      c(false, false, this.fnA, this.fnC);
      return;
      Toast.makeText(this.context, this.context.getString(n.bcU), 1).show();
    }
  }

  public final void e(String paramString, LinkedList paramLinkedList)
  {
    if ((paramString != null) && (paramString.length() > 0));
    for (boolean bool1 = true; ; bool1 = false)
    {
      Assert.assertTrue(bool1);
      boolean bool2 = false;
      if (paramLinkedList != null)
        bool2 = true;
      Assert.assertTrue(bool2);
      onStart();
      if (!this.fnB)
      {
        Context localContext = this.context;
        this.context.getString(n.ber);
        this.cHU = h.a(localContext, this.context.getString(n.bhz), true, new b(this));
      }
      this.dVr = paramLinkedList;
      this.dVq.add(paramString);
      this.fnA = paramString;
      be.uA().d(new j(1, this.dVq, paramLinkedList, "", ""));
      return;
    }
  }

  public final void j(String paramString1, String paramString2, int paramInt)
  {
    if ((paramString1 != null) && (paramString1.length() > 0));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("username is null", bool);
      onStart();
      if (!this.fnB)
      {
        Context localContext = this.context;
        this.context.getString(n.ber);
        this.cHU = h.a(localContext, this.context.getString(n.bhz), true, new c(this));
      }
      be.uA().d(new j(paramString1, paramString2, paramInt));
      return;
    }
  }

  public final void qF(String paramString)
  {
    this.fnz = paramString;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.applet.a
 * JD-Core Version:    0.6.2
 */