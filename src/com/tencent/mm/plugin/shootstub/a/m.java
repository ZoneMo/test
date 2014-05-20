package com.tencent.mm.plugin.shootstub.a;

import android.os.Bundle;

public final class m
  implements a
{
  public String cTv;
  public String crH;
  public String username;

  public final int aea()
  {
    return 1;
  }

  public final void h(Bundle paramBundle)
  {
    paramBundle.putString("RemoteEventGetUserInfo_result_username", this.username);
    paramBundle.putString("RemoteEventGetUserInfo_result_nickname", this.crH);
    paramBundle.putString("RemoteEventGetUserInfo_result_displayName", this.cTv);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.m
 * JD-Core Version:    0.6.2
 */