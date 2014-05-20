package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.c.a;

public final class e extends a
{
  public String dHm;
  public String doZ;
  public String messageAction;
  public String messageExt;

  public final int getType()
  {
    return 6;
  }

  public final void h(Bundle paramBundle)
  {
    super.h(paramBundle);
    paramBundle.putString("_wxobject_message_action", this.messageAction);
    paramBundle.putString("_wxobject_message_ext", this.messageExt);
    paramBundle.putString("_wxapi_launch_req_lang", this.doZ);
    paramBundle.putString("_wxapi_launch_req_country", this.dHm);
  }

  public final void i(Bundle paramBundle)
  {
    super.i(paramBundle);
    this.messageAction = paramBundle.getString("_wxobject_message_action");
    this.messageExt = paramBundle.getString("_wxobject_message_ext");
    this.doZ = paramBundle.getString("_wxapi_launch_req_lang");
    this.dHm = paramBundle.getString("_wxapi_launch_req_country");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.modelmsg.e
 * JD-Core Version:    0.6.2
 */