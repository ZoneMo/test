package com.tencent.mm.plugin.webview.stub;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.b;
import com.tencent.mm.model.be;
import com.tencent.mm.n.ac;
import com.tencent.mm.plugin.webview.a.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.dn;
import java.util.Set;

final class ad
  implements Runnable
{
  ad(m paramm, int paramInt, Bundle paramBundle)
  {
  }

  public final void run()
  {
    switch (this.feP)
    {
    default:
      Object[] arrayOfObject5 = new Object[1];
      arrayOfObject5[0] = Integer.valueOf(this.feP);
      aa.b("MicroMsg.WebViewStubService", "not support action code:[%d]", arrayOfObject5);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      int j;
      do
      {
        int i;
        do
        {
          int k;
          int m;
          do
          {
            return;
            WebViewStubService.a(this.feK.feJ, 2, this.cOv);
            return;
            dn.bW(this.feK.feJ);
            return;
            m.a(this.feK, this.cOv);
            return;
            WebViewStubService.a(this.feK.feJ, 3, this.cOv);
            return;
            k = this.cOv.getInt("scene_end_type", 0);
            m = this.cOv.getInt("scene_end_listener_hash_code", -1);
            if (m != -1)
              WebViewStubService.b(this.feK.feJ).add(Integer.valueOf(m));
            Object[] arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = Integer.valueOf(m);
            arrayOfObject3[1] = Integer.valueOf(WebViewStubService.b(this.feK.feJ).size());
            aa.d("MicroMsg.WebViewStubService", "add Scene end, hashCode:[%d], set size:[%d]", arrayOfObject3);
          }
          while (k <= 0);
          WebViewStubService.c(this.feK.feJ);
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = Integer.valueOf(m);
          aa.d("MicroMsg.WebViewStubService", "real add Scene end, hashCode:[%d]", arrayOfObject4);
          be.uA().a(233, this.feK.feJ);
          return;
          i = this.cOv.getInt("scene_end_type", 0);
          j = this.cOv.getInt("scene_end_listener_hash_code", -1);
          if (j != -1)
            WebViewStubService.b(this.feK.feJ).remove(Integer.valueOf(j));
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = Integer.valueOf(j);
          arrayOfObject1[1] = Integer.valueOf(WebViewStubService.b(this.feK.feJ).size());
          aa.d("MicroMsg.WebViewStubService", "remove Scene end, hashCode:[%d], set size:[%d]", arrayOfObject1);
        }
        while (i <= 0);
        WebViewStubService.d(this.feK.feJ);
      }
      while ((WebViewStubService.e(this.feK.feJ) > 0) || (WebViewStubService.b(this.feK.feJ).size() > 0));
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(j);
      aa.d("MicroMsg.WebViewStubService", "real remove Scene end, hashCode:[%d]", arrayOfObject2);
      be.uA().b(233, this.feK.feJ);
      return;
    case 7:
      Intent localIntent2 = new Intent();
      localIntent2.putExtra("MMActivity.OverrideEnterAnimation", 0);
      localIntent2.putExtra("MMActivity.OverrideExitAnimation", b.YF);
      localIntent2.addFlags(268435456);
      a.cHS.q(localIntent2, this.feK.feJ);
      return;
    case 8:
      Intent localIntent1 = new Intent();
      localIntent1.putExtras(this.cOv);
      localIntent1.addFlags(268435456);
      a.cHS.r(localIntent1, this.feK.feJ);
      return;
    case 9:
      WebViewStubService.a(this.feK.feJ, this.cOv);
      return;
    case 10:
    }
    com.tencent.mm.plugin.webview.b.e.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.webview.stub.ad
 * JD-Core Version:    0.6.2
 */