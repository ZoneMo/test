package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.platformtools.au;
import java.util.List;

final class dl
  implements View.OnClickListener
{
  dl(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    List localList = SelectContactUI.b(this.gVn).aKV();
    if ((localList == null) || (localList.size() == 0))
    {
      this.gVn.setResult(0);
      this.gVn.finish();
      return;
    }
    if (SelectContactUI.l(this.gVn))
    {
      localIntent.putExtra("enter_room_username", au.a(localList, ","));
      a.b(this.gVn, "talkroom", ".ui.TalkRoomUI", localIntent);
      this.gVn.finish();
      return;
    }
    localIntent.putExtra("Select_Contact", au.a(localList, ","));
    this.gVn.setResult(-1, localIntent);
    this.gVn.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dl
 * JD-Core Version:    0.6.2
 */