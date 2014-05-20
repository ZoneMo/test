package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.TextUtils;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ad;
import com.tencent.mm.modelfriend.ax;
import com.tencent.mm.n;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.v.d;
import java.util.ArrayList;

public final class co
  implements m
{
  private Context context;
  private ProgressDialog dRP;
  private cs hcb;

  public co(Context paramContext, cs paramcs)
  {
    this.context = paramContext;
    this.hcb = paramcs;
  }

  private void xn(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString);
    d locald = new d(localArrayList);
    be.uA().d(locald);
    Context localContext = this.context;
    this.context.getString(n.bpo);
    this.dRP = h.a(localContext, this.context.getString(n.bpm), true, new cq(this, locald));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    if (TextUtils.isEmpty(paramString))
      paramString = "";
    arrayOfObject[2] = paramString;
    aa.d("MicroMsg.SendInviteGoogleContact", "[onSceneEnd] errType:%d,errCode:%d,errMsg:%s", arrayOfObject);
    if (paramx.getType() != 489)
      return;
    if (this.dRP != null)
    {
      this.dRP.dismiss();
      this.dRP = null;
    }
    be.uA().b(489, this);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      aa.i("MicroMsg.SendInviteGoogleContact", "dealSendInviteSuccess");
      h.a(this.context, n.bpl, n.ber, new cr(this));
      return;
    }
    aa.i("MicroMsg.SendInviteGoogleContact", "dealSendInviteFail");
    this.hcb.eb(false);
  }

  public final void bi(String paramString1, String paramString2)
  {
    be.uA().a(489, this);
    Cursor localCursor = ax.At().fC(paramString1);
    if (localCursor.getCount() <= 1)
      xn(paramString2);
    while (true)
    {
      if (localCursor != null)
        localCursor.close();
      return;
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      ArrayList localArrayList3 = new ArrayList();
      if (localCursor != null)
      {
        localCursor.moveToFirst();
        int i = localCursor.getCount();
        for (int j = 0; j < i; j++)
        {
          com.tencent.mm.modelfriend.ac localac = new com.tencent.mm.modelfriend.ac();
          localac.convertFrom(localCursor);
          localArrayList1.add(localac.field_googlegmail);
          localArrayList2.add(Integer.valueOf(j));
          localArrayList3.add(localac);
          localCursor.moveToNext();
        }
        localArrayList2.add(Integer.valueOf(-1));
      }
      Context localContext = this.context;
      String str = this.context.getResources().getString(n.boH);
      this.context.getResources().getString(n.bds);
      h.a(localContext, str, localArrayList1, localArrayList2, new cp(this, localArrayList3));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.co
 * JD-Core Version:    0.6.2
 */