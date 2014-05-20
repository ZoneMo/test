package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.storage.ak;

final class hg
  implements AdapterView.OnItemClickListener
{
  hg(ChattingUI paramChattingUI)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ak localak = (ak)ChattingUI.v(this.gPG).getItem(paramInt);
    if ((localak != null) && (!au.hX(localak.aCl())))
    {
      m localm = m.dZN;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      localm.d(10450, arrayOfObject);
      Intent localIntent = new Intent(this.gPG, ChattingUI.class);
      localIntent.putExtra("Chat_User", localak.aCl());
      localIntent.putExtra("finish_direct", true);
      localIntent.putExtra("show_search_chat_content_result", true);
      localIntent.putExtra("msg_local_id", localak.Bo());
      this.gPG.startActivity(localIntent);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hg
 * JD-Core Version:    0.6.2
 */