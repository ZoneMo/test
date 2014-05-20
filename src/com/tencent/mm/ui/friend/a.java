package com.tencent.mm.ui.friend;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;
import java.util.LinkedList;

public final class a
  implements View.OnClickListener
{
  private Context context;
  private c haI;

  public a(Context paramContext, c paramc)
  {
    this.context = paramContext;
    this.haI = paramc;
  }

  public final void onClick(View paramView)
  {
    d locald = (d)paramView.getTag();
    String str = locald.username;
    int i = locald.edN;
    int j = locald.position;
    i locali = be.uz().su().tO(str);
    if (cj.hX(locali.getUsername()))
      locali.setUsername(str);
    com.tencent.mm.pluginsdk.ui.applet.a locala = new com.tencent.mm.pluginsdk.ui.applet.a(this.context, new b(this, locali, j, str));
    LinkedList localLinkedList = new LinkedList();
    localLinkedList.add(Integer.valueOf(i));
    locala.e(str, localLinkedList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.a
 * JD-Core Version:    0.6.2
 */