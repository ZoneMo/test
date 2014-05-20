package com.tencent.mm.ui.contact;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.Toast;
import com.tencent.mm.as.a;
import com.tencent.mm.as.d;
import com.tencent.mm.m.af;
import com.tencent.mm.m.m;
import com.tencent.mm.m.s;
import com.tencent.mm.m.u;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;

final class cm
  implements u
{
  cm(FriendPreference paramFriendPreference, s params, String paramString1, String paramString2)
  {
  }

  public final int E(int paramInt1, int paramInt2)
  {
    this.ckj.vM();
    be.uz().sT().a(new d(1003, this.ckt + ";" + paramInt1 + ";" + paramInt2));
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    aa.d("MicroMsg.FriendPreference", "onSceneEnd: errType=%d, errCode=%d", arrayOfObject);
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      Bitmap localBitmap = af.vJ().eg(this.ckt);
      if (FriendPreference.a(this.gUh, this.gUj, localBitmap))
      {
        Toast.makeText(this.gUh.getContext(), this.gUh.getContext().getString(2131166388), 0).show();
        return 0;
      }
    }
    Toast.makeText(this.gUh.getContext(), this.gUh.getContext().getString(2131166389), 0).show();
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cm
 * JD-Core Version:    0.6.2
 */