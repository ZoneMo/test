package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.res.Resources;
import com.tencent.mm.c.a.dr;
import com.tencent.mm.c.a.dt;
import com.tencent.mm.pluginsdk.c.b;
import com.tencent.mm.pluginsdk.ui.applet.ContactListExpandPreference;
import com.tencent.mm.sdk.b.e;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.n;
import java.util.ArrayList;
import java.util.LinkedList;

final class eg extends b
{
  eg(RoomInfoUI paramRoomInfoUI)
  {
  }

  public final void a(int paramInt1, int paramInt2, String paramString, e parame)
  {
    dr localdr;
    if ((parame instanceof dr))
    {
      localdr = (dr)parame;
      aa.i("MicroMsg.RoomInfoUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
      if (RoomInfoUI.n(this.gpa) != null)
        RoomInfoUI.n(this.gpa).dismiss();
      if ((paramInt1 == 0) && (paramInt2 == 0))
        break label150;
      if (paramInt2 == -21)
        h.a(this.gpa, this.gpa.getString(2131167652), this.gpa.getString(2131167675), new eh(this));
    }
    else
    {
      return;
    }
    h.p(this.gpa, this.gpa.getString(2131167651), this.gpa.getString(2131167675));
    return;
    label150: if ((paramInt1 == 0) && (paramInt2 == 0) && (RoomInfoUI.e(this.gpa) != null))
    {
      LinkedList localLinkedList = localdr.bOI.bOK;
      ArrayList localArrayList = RoomInfoUI.az(localLinkedList);
      RoomInfoUI.e(this.gpa).B(localArrayList);
      if (RoomInfoUI.d(this.gpa) != null)
        RoomInfoUI.d(this.gpa).notifyDataSetChanged();
      RoomInfoUI localRoomInfoUI = this.gpa;
      Resources localResources = this.gpa.getResources();
      int i = localArrayList.size();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(localArrayList.size());
      localRoomInfoUI.vT(localResources.getQuantityString(2131230738, i, arrayOfObject));
    }
    RoomInfoUI.o(this.gpa);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.eg
 * JD-Core Version:    0.6.2
 */