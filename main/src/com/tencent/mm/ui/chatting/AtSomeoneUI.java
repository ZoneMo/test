package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ListView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

public class AtSomeoneUI extends MMActivity
{
  private ListView eyU;
  private String gKA;
  private String gKB;
  private t gKz;

  protected final void FR()
  {
    mn(2131167647);
    a(new r(this));
    this.gKA = getIntent().getStringExtra("Block_list");
    this.gKB = getIntent().getStringExtra("Chatroom_member_list");
    this.eyU = ((ListView)findViewById(2131361981));
    this.gKz = new t(this, new i());
    this.eyU.setOnItemClickListener(new s(this));
    boolean bool = au.hX(this.gKA);
    Object localObject = null;
    if (!bool)
      localObject = au.c(this.gKA.split(","));
    if (localObject == null)
      localObject = new LinkedList();
    this.gKz.aB((List)localObject);
    if (!au.hX(this.gKB))
    {
      String[] arrayOfString = this.gKB.split(",");
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Arrays.toString(arrayOfString);
      aa.e("MicroMsg.AtSomeoneUI", "chatroom members name=[%s]", arrayOfObject);
      this.gKz.B(arrayOfString);
    }
    this.eyU.setAdapter(this.gKz);
  }

  protected final int getLayoutId()
  {
    return 2130903090;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  protected void onDestroy()
  {
    this.gKz.closeCursor();
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.AtSomeoneUI
 * JD-Core Version:    0.6.2
 */