package com.tencent.mm.k;

import android.os.Bundle;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.r;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.account.fp;

public class a
  implements m, fp
{
  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    if (paramx.getType() != 183)
      return;
    be.uA().b(183, this);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      aa.i("MicroMsg.RefreshTokenListener", "update token success");
      return;
    }
    aa.e("MicroMsg.RefreshTokenListener", "update token fail");
  }

  public void e(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("access_token");
    String str2 = paramBundle.getString("expires");
    aa.i("MicroMsg.RefreshTokenListener", "onComplete : newToken = " + str1 + ", expires = " + str2);
    if (str2 != null)
      be.uz().sr().set(65832, str2);
    be.uz().sr().set(65830, str1);
    be.uz().sr().set(65831, Long.valueOf(System.currentTimeMillis()));
    be.uA().a(183, this);
    r localr = new r(2, str1);
    be.uA().d(localr);
  }

  public void onError(int paramInt, String paramString)
  {
    aa.e("MicroMsg.RefreshTokenListener", "onError : errType = " + paramInt + ", errMsg = " + paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.k.a
 * JD-Core Version:    0.6.2
 */