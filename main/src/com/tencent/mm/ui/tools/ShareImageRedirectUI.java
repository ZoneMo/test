package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.ak.a;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ui.tools.s;
import com.tencent.mm.storage.h;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.transmit.MulSelectConversationUI;
import java.util.ArrayList;

public class ShareImageRedirectUI extends Activity
{
  private String imagePath;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1)
      finish();
    do
    {
      return;
      switch (paramInt1)
      {
      case 1:
      default:
        return;
      case 0:
        this.imagePath = s.a(getApplicationContext(), paramIntent, be.uz().sB());
      case 2:
      }
    }
    while (this.imagePath == null);
    Intent localIntent3 = new Intent(this, MulSelectConversationUI.class);
    localIntent3.putExtra("intent_extra_image_path", this.imagePath);
    startActivityForResult(localIntent3, 2);
    return;
    ArrayList localArrayList = null;
    if (paramIntent != null)
      localArrayList = paramIntent.getStringArrayListExtra("Select_Contact");
    if ((localArrayList != null) && (localArrayList.size() == 1))
    {
      Intent localIntent2 = new Intent(this, ChattingUI.class);
      localIntent2.putExtra("Chat_User", (String)localArrayList.get(0));
      startActivity(localIntent2);
      finish();
      return;
    }
    if ((localArrayList != null) && (localArrayList.size() > 1))
    {
      finish();
      return;
    }
    Intent localIntent1 = new Intent();
    localIntent1.putExtra("Ksnsupload_type", 0);
    localIntent1.putExtra("sns_kemdia_path", this.imagePath);
    a.b(this, "sns", ".ui.SnsUploadUI", localIntent1);
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    s.a(this, h.cfG, "microMsg." + System.currentTimeMillis() + ".jpg", 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.ShareImageRedirectUI
 * JD-Core Version:    0.6.2
 */