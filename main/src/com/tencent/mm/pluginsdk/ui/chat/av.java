package com.tencent.mm.pluginsdk.ui.chat;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ak.a;
import com.tencent.mm.ui.base.ce;
import java.util.ArrayList;

final class av
  implements View.OnClickListener
{
  av(au paramau)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(au.a(this.fqX).fqS);
    localIntent.putExtra("query_source_type", 3);
    localIntent.putExtra("preview_image", true);
    localIntent.putStringArrayListExtra("preview_image_list", localArrayList);
    localIntent.addFlags(67108864);
    a.a(au.b(this.fqX), "gallery", ".ui.GalleryEntryUI", localIntent, 217);
    au.c(this.fqX).dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.av
 * JD-Core Version:    0.6.2
 */