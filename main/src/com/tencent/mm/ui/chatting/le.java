package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.view.MenuItem;
import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.model.ct;
import com.tencent.mm.model.v;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.d.c.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ak;
import com.tencent.mm.ui.base.cd;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.tools.ImageGalleryUI;
import com.tencent.mm.w.ag;
import com.tencent.mm.w.e;
import com.tencent.mm.w.f;
import com.tencent.mm.w.g;
import com.tencent.mm.w.y;

final class le
  implements cd
{
  le(ak paramak, Context paramContext)
  {
  }

  public final void d(MenuItem paramMenuItem, int paramInt)
  {
    String str1 = paramMenuItem.getTitle();
    if (this.ctu.field_msgId > 0L);
    for (e locale1 = ag.Ba().dG((int)this.ctu.field_msgId); ; locale1 = null)
    {
      if (((locale1 == null) || (locale1.AG() <= 0L)) && (this.ctu.field_msgSvrId > 0));
      for (e locale2 = ag.Ba().dF(this.ctu.field_msgSvrId); ; locale2 = locale1)
      {
        if (locale2 == null)
        {
          aa.w("MicroMsg.LongClickBrandServiceHelper", "showAcceptImgConnector: try get imgInfo fail");
          return;
        }
        if ((locale2.getOffset() >= locale2.vR()) && (locale2.vR() != 0))
        {
          int j;
          int i;
          if (this.ctu.rO() == 1)
            if (locale2.AM())
            {
              j = 1;
              i = j;
            }
          while (true)
          {
            String str2 = v.th();
            String str3 = ag.Ba().j(f.c(locale2), "", "");
            if (!cj.hX(str3))
            {
              aa.d("MicroMsg.LongClickBrandServiceHelper", "connector click[img]: to[%s] fileName[%s]", new Object[] { str1, str3 });
              y localy = new y(4, str2, str1, str3, i, null);
              be.uA().d(localy);
              ct.vB().a(ct.cjQ, null);
            }
            m localm = m.dZN;
            Object[] arrayOfObject = new Object[3];
            arrayOfObject[0] = Integer.valueOf(3);
            arrayOfObject[1] = Integer.valueOf(4);
            arrayOfObject[2] = str1;
            localm.d(10424, arrayOfObject);
            h.an(this.cGV, this.cGV.getString(2131167704));
            return;
            j = 0;
            break;
            if (!locale2.AM())
              i = 0;
            else if (!c.as(f.a(locale2).AI()))
              i = 0;
            else
              i = 1;
          }
        }
        Intent localIntent = new Intent(this.cGV, ImageGalleryUI.class);
        localIntent.putExtra("img_gallery_msg_id", this.ctu.field_msgId);
        localIntent.putExtra("img_gallery_msg_svr_id", this.ctu.field_msgSvrId);
        localIntent.putExtra("img_gallery_talker", this.ctu.field_talker);
        localIntent.putExtra("img_gallery_chatroom_name", this.ctu.field_talker);
        localIntent.putExtra("img_gallery_is_restransmit_after_download", true);
        localIntent.putExtra("img_gallery_directly_send_name", str1);
        localIntent.putExtra("start_chatting_ui", false);
        this.cGV.startActivity(localIntent);
        return;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.le
 * JD-Core Version:    0.6.2
 */