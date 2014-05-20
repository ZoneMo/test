package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.c;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.chatting.ChattingUI;

final class cn
  implements AdapterView.OnItemClickListener
{
  cn(GroupCardSelectUI paramGroupCardSelectUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    i locali = (i)GroupCardSelectUI.a(this.gUp).getItem(paramInt);
    if (locali == null)
    {
      aa.v("MicroMsg.GroupCardSelectUI", "onItemClick contact null");
      return;
    }
    if (GroupCardSelectUI.b(this.gUp))
    {
      if (GroupCardSelectUI.c(this.gUp))
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("Select_Conv_User", locali.getUsername());
        this.gUp.setResult(-1, localIntent2);
        this.gUp.finish();
        return;
      }
      Intent localIntent3 = new Intent(this.gUp, ChattingUI.class);
      localIntent3.addFlags(67108864);
      localIntent3.putExtra("Chat_User", locali.getUsername());
      this.gUp.startActivity(localIntent3);
      this.gUp.finish();
      return;
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("Select_Contact", cj.a(be.uz().sA().tv(locali.getUsername()), ","));
    localIntent1.putExtra("Select_room_name", w.cu(locali.getUsername()));
    this.gUp.setResult(-1, localIntent1);
    this.gUp.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cn
 * JD-Core Version:    0.6.2
 */