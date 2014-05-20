package com.tencent.mm.ui.chatting;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.tencent.mm.ai.v;
import com.tencent.mm.ui.video.VideoDownloadUI;

final class ff
  implements DialogInterface.OnClickListener
{
  ff(ez paramez, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    v.hg(this.gOd);
    Intent localIntent = new Intent(ez.a(this.gOb), VideoDownloadUI.class);
    localIntent.putExtra("file_name", this.gOd);
    ez.a(this.gOb).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ff
 * JD-Core Version:    0.6.2
 */