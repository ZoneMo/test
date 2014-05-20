package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Context;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.am;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;

public final class ck
  implements m
{
  private Context context;
  private ProgressDialog dRP;
  private cn hbY;

  public ck(Context paramContext, cn paramcn)
  {
    this.context = paramContext;
    this.hbY = paramcn;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 116)
      return;
    if (this.dRP != null)
    {
      this.dRP.dismiss();
      this.dRP = null;
    }
    be.uA().b(116, this);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      aa.i("MicroMsg.SendInviteEmail", "dealSendInviteEmailSuccess");
      h.a(this.context, n.bpl, n.ber, new cm(this));
      return;
    }
    aa.i("MicroMsg.SendInviteEmail", "dealSendInviteEmailFail");
    this.hbY.ea(false);
  }

  public final void f(int[] paramArrayOfInt)
  {
    be.uA().a(116, this);
    am localam = new am(paramArrayOfInt);
    be.uA().d(localam);
    Context localContext = this.context;
    this.context.getString(n.bpo);
    this.dRP = h.a(localContext, this.context.getString(n.bpm), true, new cl(this, localam));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ck
 * JD-Core Version:    0.6.2
 */