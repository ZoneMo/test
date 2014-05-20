package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.storage.i;

final class s
  implements AdapterView.OnItemClickListener
{
  s(AtSomeoneUI paramAtSomeoneUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    i locali = (i)AtSomeoneUI.a(this.gKC).getItem(paramInt);
    Intent localIntent = new Intent();
    localIntent.putExtra("Select_Conv_User", locali.rq());
    this.gKC.setResult(-1, localIntent);
    this.gKC.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.s
 * JD-Core Version:    0.6.2
 */