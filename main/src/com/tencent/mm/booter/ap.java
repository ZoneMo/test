package com.tencent.mm.booter;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.sdk.platformtools.z;

public final class ap
{
  private Context context;

  public ap(Context paramContext)
  {
    this.context = paramContext;
  }

  public final String oT()
  {
    int i = j.bKo;
    String str1 = s.pV();
    int j = a.fxr;
    String str2 = z.azj();
    int k = this.context.getSharedPreferences(al.azs(), 0).getInt("last_reportdevice_channel", 0);
    int m = this.context.getSharedPreferences(al.azs(), 0).getInt("last_reportdevice_clientversion", 0);
    int n;
    if (k == 0)
    {
      n = 0;
      if (m != 0);
    }
    while (true)
    {
      return "http://support.weixin.qq.com/cgi-bin/mmsupport-bin/reportdevice?channel=" + j.bKo + "&deviceid=" + str1 + "&clientversion=" + j + "&platform=" + "0" + "&lang=" + str2 + "&installtype=" + n;
      if ((k == i) && (m == j))
        return null;
      n = 1;
    }
  }

  public final void oU()
  {
    new Thread(new aq(this), "startup report").start();
  }

  public final void w(int paramInt1, int paramInt2)
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences(al.azs(), 0);
    localSharedPreferences.edit().putInt("last_reportdevice_channel", paramInt1).commit();
    localSharedPreferences.edit().putInt("last_reportdevice_clientversion", paramInt2).commit();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.ap
 * JD-Core Version:    0.6.2
 */