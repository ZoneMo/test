package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;
import com.tencent.mm.model.r;
import com.tencent.mm.model.v;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.pluginsdk.ui.chat.ChatFooter;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.x;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

final class hw
  implements TextWatcher
{
  private boolean gPU = false;
  private List gPV = null;

  hw(ChattingUI paramChattingUI)
  {
  }

  private static void b(List paramList, String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      if ((str.length() > 0) && (str.substring(-1 + str.length(), str.length()).matches("[_0-9a-zA-Z]$")))
        paramList.add(str);
    }
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((!this.gPU) && (paramEditable.length() > 0))
    {
      this.gPG.nE(1);
      this.gPU = true;
    }
    while ((!this.gPU) || (paramEditable.length() > 0))
      return;
    this.gPG.nE(2);
    this.gPU = false;
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str1 = String.valueOf(paramCharSequence);
    String str2 = str1.substring(paramInt1, paramInt1 + paramInt3);
    int j;
    if ((this.gPG.gMn) && ("@".equals(str2)) && (!str1.equals(this.gPG.dKO.asv())) && (!this.gPG.dKO.ast()))
    {
      this.gPG.dKO.qJ(str1);
      this.gPG.dKO.kz(paramInt1 + 1);
      if ((str1 == null) || (paramInt1 < 0) || (str1.length() <= paramInt1))
      {
        j = 0;
        if (j != 0)
        {
          String str4 = au.a(r.cg(this.gPG.aJe()), ",");
          Intent localIntent = new Intent();
          localIntent.setClass(this.gPG, AtSomeoneUI.class);
          localIntent.putExtra("Block_list", v.th());
          localIntent.putExtra("Chatroom_member_list", str4);
          this.gPG.startActivityForResult(localIntent, 212);
        }
      }
    }
    while (true)
      if (((ChattingUI.z(this.gPG) == null) || (!ChattingUI.z(this.gPG).isShowing())) && (cj.sU(str2)))
      {
        if (this.gPG.gMo)
          break label586;
        Bitmap localBitmap = com.tencent.mm.sdk.platformtools.h.a(str2, 300, 300, false);
        if (localBitmap == null)
        {
          aa.e("MicroMsg.ChattingUI", "showAlert fail, bmp is null");
          return;
          String str5;
          Iterator localIterator;
          if ((paramInt1 != 0) && (str1.substring(paramInt1 - 1, paramInt1).matches("[_0-9a-zA-Z]$")))
          {
            if (this.gPV == null)
            {
              this.gPV = new LinkedList();
              String[] arrayOfString1 = this.gPG.getResources().getStringArray(2131296274);
              b(this.gPV, arrayOfString1);
              String[] arrayOfString2 = this.gPG.getResources().getStringArray(2131296275);
              b(this.gPV, arrayOfString2);
            }
            str5 = str1.substring(0, paramInt1);
            localIterator = this.gPV.iterator();
          }
          while (true)
            if (localIterator.hasNext())
              if (str5.endsWith((String)localIterator.next()))
              {
                j = 1;
                break;
              }
          j = 0;
          break;
          if (str1.equals(this.gPG.dKO.asv()))
            continue;
          this.gPG.dKO.qJ(str1);
          continue;
        }
        ImageView localImageView = new ImageView(this.gPG);
        int i = this.gPG.getResources().getDimensionPixelSize(2131558431);
        localImageView.setImageBitmap(localBitmap);
        localImageView.setPadding(i, i, i, i);
        ChattingUI.a(this.gPG, com.tencent.mm.ui.base.h.a(this.gPG, this.gPG.getString(2131165788), localImageView, this.gPG.getString(2131167684), this.gPG.getString(2131167681), new hx(this, str2), null));
      }
    while (true)
    {
      String str3 = str1.substring(0, paramInt1);
      this.gPG.dKO.postDelayed(new hy(this, str3), 10L);
      an.i(new hz(this, str1));
      return;
      label586: ChattingUI.a(this.gPG, com.tencent.mm.ui.base.h.p(this.gPG, this.gPG.getString(2131165793), this.gPG.getString(2131167684)));
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.hw
 * JD-Core Version:    0.6.2
 */