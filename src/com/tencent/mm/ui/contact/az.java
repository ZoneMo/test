package com.tencent.mm.ui.contact;

import android.app.Activity;
import android.content.Intent;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.tools.w;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.voicesearch.VoiceSearchResultUI;

final class az
  implements w
{
  az(ChatroomContactUI paramChatroomContactUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
  }

  public final void FV()
  {
  }

  public final void a(boolean paramBoolean, String[] paramArrayOfString, long paramLong, int paramInt)
  {
    aa.v("MicroMsg.ChatroomContactUI", "onVoiceReturn");
    if (paramBoolean)
    {
      Intent localIntent1 = new Intent(this.gTl.aal(), VoiceSearchResultUI.class);
      localIntent1.putExtra("VoiceSearchResultUI_Resultlist", paramArrayOfString);
      localIntent1.putExtra("VoiceSearchResultUI_VoiceId", paramLong);
      localIntent1.putExtra("VoiceSearchResultUI_ShowType", paramInt);
      this.gTl.aal().startActivity(localIntent1);
      return;
    }
    Intent localIntent2 = new Intent(this.gTl.aal(), VoiceSearchResultUI.class);
    localIntent2.putExtra("VoiceSearchResultUI_Resultlist", new String[0]);
    localIntent2.putExtra("VoiceSearchResultUI_Error", this.gTl.aal().getString(2131165276));
    localIntent2.putExtra("VoiceSearchResultUI_VoiceId", paramLong);
    localIntent2.putExtra("VoiceSearchResultUI_ShowType", paramInt);
    this.gTl.aal().startActivity(localIntent2);
  }

  public final void abb()
  {
    aa.v("MicroMsg.ChatroomContactUI", "onVoiceSearchStart");
    this.gTl.SM();
  }

  public final void abc()
  {
  }

  public final void ig(String paramString)
  {
    aa.e("MicroMsg.ChatroomContactUI", "onSearchBarChange %s", new Object[] { paramString });
    String str = au.hR(paramString);
    ChatroomContactUI.a(this.gTl, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.az
 * JD-Core Version:    0.6.2
 */