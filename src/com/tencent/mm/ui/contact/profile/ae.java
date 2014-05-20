package com.tencent.mm.ui.contact.profile;

import android.content.Context;
import android.content.Intent;
import com.tencent.mm.c.a.cv;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.e.ar;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.storage.ap;
import com.tencent.mm.storage.o;
import com.tencent.mm.ui.base.h;

public final class ae extends bb
  implements ar
{
  public ae(Context paramContext)
  {
    super(paramContext, new bx(paramContext));
    cv localcv = new cv();
    com.tencent.mm.sdk.b.a.ayH().f(localcv);
  }

  public static void clearData()
  {
    be.uz().sw().vb("feedsapp");
    be.uz().sx().tX("feedsapp");
  }

  protected final boolean aLe()
  {
    return (0x8000 & v.tq()) == 0;
  }

  protected final void clear()
  {
    clearData();
  }

  protected final void dW(boolean paramBoolean)
  {
    Context localContext = this.context;
    if (paramBoolean);
    for (String str = localContext.getString(2131165872); ; str = localContext.getString(2131165873))
    {
      localContext.getString(2131167675);
      new ay(new af(paramBoolean, h.a(localContext, str, true, null)), false).bO(1500L);
      return;
    }
  }

  public final boolean iO(String paramString)
  {
    if ("contact_info_plugin_view".equals(paramString))
    {
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("sns_timeline_NeedFirstLoadint", true);
      com.tencent.mm.ak.a.b(this.context, "sns", ".ui.SnsTimeLineUI", localIntent1);
      return true;
    }
    if ("contact_info_plugin_outsize".equals(paramString))
    {
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("k_sns_tag_id", 4L);
      com.tencent.mm.ak.a.b(this.context, "sns", ".ui.SnsBlackDetailUI", localIntent2);
    }
    if ("contact_info_plugin_black".equals(paramString))
    {
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("k_sns_tag_id", 5L);
      com.tencent.mm.ak.a.b(this.context, "sns", ".ui.SnsTagDetailUI", localIntent3);
    }
    return super.iO(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.ae
 * JD-Core Version:    0.6.2
 */