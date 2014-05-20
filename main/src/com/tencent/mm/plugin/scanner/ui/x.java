package com.tencent.mm.plugin.scanner.ui;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.plugin.scanner.a.g;
import com.tencent.mm.plugin.scanner.b.m;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.w;

final class x
  implements w
{
  x(ProductUI paramProductUI)
  {
  }

  public final void ai(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
    case -1:
    case 0:
    case 1:
      do
      {
        return;
        h.a(this.ede.aal(), this.ede.aal().getString(com.tencent.mm.n.bdy), null, null, this.ede.aal().getString(com.tencent.mm.n.bdx), new y(this));
        return;
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("KContentObjDesc", ProductUI.e(this.ede).field_subtitle);
        localIntent2.putExtra("Ksnsupload_title", ProductUI.e(this.ede).field_title);
        localIntent2.putExtra("Ksnsupload_link", ProductUI.e(this.ede).field_shareurl);
        localIntent2.putExtra("Ksnsupload_appname", m.b(this.ede, ProductUI.e(this.ede).field_type));
        localIntent2.putExtra("Ksnsupload_appid", g.hC(ProductUI.e(this.ede).field_functionType));
        localIntent2.putExtra("Ksnsupload_imgurl", ProductUI.e(this.ede).field_thumburl);
        if ((ProductUI.f(this.ede) != null) && (ProductUI.g(this.ede)))
          localIntent2.putExtra("KsnsUpload_imgPath", ProductUI.f(this.ede).Fr());
        localIntent2.putExtra("Ksnsupload_type", 3);
        localIntent2.putExtra("KUploadProduct_UserData", m.b(ProductUI.e(this.ede)));
        localIntent2.putExtra("KUploadProduct_subType", ProductUI.e(this.ede).field_type);
        com.tencent.mm.ak.a.b(this.ede, "sns", ".ui.SnsUploadUI", localIntent2);
        return;
      }
      while (ProductUI.e(this.ede) == null);
      String str = g.a(this.ede.aal(), ProductUI.e(this.ede));
      Intent localIntent1 = new Intent();
      localIntent1.putExtra("Retr_Msg_content", str);
      localIntent1.putExtra("Retr_Msg_Type", 2);
      if ((ProductUI.f(this.ede) != null) && (ProductUI.g(this.ede)))
        localIntent1.putExtra("Retr_Msg_thumb_path", ProductUI.f(this.ede).Fr());
      localIntent1.putExtra("Retr_go_to_chattingUI", false);
      localIntent1.putExtra("Retr_show_success_tips", true);
      com.tencent.mm.plugin.scanner.a.Tm().i(localIntent1, this.ede);
      return;
    case 2:
    }
    ProductUI.h(this.ede);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.x
 * JD-Core Version:    0.6.2
 */