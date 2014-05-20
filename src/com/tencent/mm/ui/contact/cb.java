package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.widget.Toast;
import com.tencent.mm.ak.a;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.base.v;

final class cb
  implements v
{
  cb(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
      do
      {
        return;
        aa.d("MiroMsg.ContactRemarkInfoModUI", "take photo");
      }
      while (s.a(this.gTN, h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 100));
      Toast.makeText(this.gTN, this.gTN.getString(2131165340), 1).show();
      return;
    case 1:
    }
    aa.d("MiroMsg.ContactRemarkInfoModUI", "pick up an image");
    Intent localIntent = new Intent();
    localIntent.putExtra("max_select_count", 1);
    localIntent.putExtra("query_source_type", 0);
    localIntent.putExtra("send_btn_string", " ");
    localIntent.addFlags(67108864);
    a.a(this.gTN, "gallery", ".ui.GalleryEntryUI", localIntent, 200);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cb
 * JD-Core Version:    0.6.2
 */