package com.tencent.mm.plugin.shootstub.a;

import android.os.Bundle;
import java.util.ArrayList;

public final class l
  implements a
{
  public ArrayList eqW;
  public ArrayList etS;
  public ArrayList etT;

  public final int aea()
  {
    return 2;
  }

  public final void h(Bundle paramBundle)
  {
    paramBundle.putStringArrayList("RemoteEventGetUserInfo_data_usernameList", this.etS);
    paramBundle.putStringArrayList("RemoteEventGetUserInfo_result_displayNameList", this.eqW);
    paramBundle.putStringArrayList("RemoteEventGetUserInfo_result_headImgPathList", this.etT);
  }

  public final void i(Bundle paramBundle)
  {
    this.etS = paramBundle.getStringArrayList("RemoteEventGetUserInfo_data_usernameList");
    this.eqW = paramBundle.getStringArrayList("RemoteEventGetUserInfo_result_displayNameList");
    this.etT = paramBundle.getStringArrayList("RemoteEventGetUserInfo_result_headImgPathList");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.shootstub.a.l
 * JD-Core Version:    0.6.2
 */