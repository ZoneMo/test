package com.tencent.mm.plugin.accountsync.ui;

import android.accounts.AccountAuthenticatorResponse;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.plugin.accountsync.model.c;
import com.tencent.mm.plugin.accountsync.model.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.SimpleLoginUI;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;

public final class ContactsSyncUI extends MMActivity
{
  private AccountAuthenticatorResponse cIh = null;
  private Bundle cIi = null;

  protected final void FR()
  {
    if ((!be.uD()) || (be.uG()))
    {
      MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), getIntent());
      finish();
      return;
    }
    int i = getIntent().getIntExtra("contact_sync_scene", -1);
    int j;
    if ((getIntent().getAction() != null) && (getIntent().getAction().equalsIgnoreCase("com.tencent.mm.login.ACTION_LOGIN")))
      j = 4;
    while (true)
      if (j == -1)
      {
        aa.e("MicroMsg.ContactsSyncUI", "unkown scene, finish");
        finish();
        return;
        String str = getIntent().resolveType(this);
        aa.i("MicroMsg.ContactsSyncUI", "scheme = " + str + ", action = " + getIntent().getAction());
        if (!cj.hX(str))
        {
          if (str.equals("vnd.android.cursor.item/vnd.com.tencent.mm.chatting.profile"))
          {
            j = 2;
            continue;
          }
          if (str.equals("vnd.android.cursor.item/vnd.com.tencent.mm.plugin.sns.timeline"))
          {
            j = 3;
            continue;
          }
          if (str.equals("vnd.android.cursor.item/vnd.com.tencent.mm.chatting.phonenum"))
          {
            j = 6;
            continue;
          }
          j = -1;
        }
      }
      else
      {
        Object localObject = null;
        switch (j)
        {
        case 5:
        default:
          if (localObject != null)
            switch (((c)localObject).aj(this))
            {
            case 5:
            case 0:
            case 1:
            default:
            case 2:
            case 3:
            case 4:
            }
          break;
        case 2:
        case 6:
        case 3:
        case 1:
        case 4:
        }
        while (true)
        {
          finish();
          return;
          Uri localUri2 = getIntent().getData();
          localObject = new d(1, getIntent().getStringExtra("k_phone_num"), localUri2);
          break;
          Uri localUri1 = getIntent().getData();
          localObject = new d(2, getIntent().getStringExtra("k_phone_num"), localUri1);
          break;
          this.cIh = ((AccountAuthenticatorResponse)getIntent().getParcelableExtra("accountAuthenticatorResponse"));
          if (this.cIh != null)
            this.cIh.onRequestContinued();
          if (!getIntent().getBooleanExtra("k_login_without_bind_mobile", false));
          for (boolean bool = true; ; bool = false)
          {
            localObject = new a(this, bool);
            break;
          }
          Intent localIntent5 = getIntent();
          localIntent5.setClass(this, ContactsSyncUI.class);
          Intent localIntent6 = new Intent();
          localIntent6.setClass(this, BindMContactIntroUI.class);
          localIntent6.putExtra("is_bind_for_contact_sync", true);
          MMWizardActivity.b(this, localIntent6, localIntent5);
          finish();
          continue;
          Intent localIntent3 = getIntent();
          localIntent3.setClass(this, ContactsSyncUI.class);
          Intent localIntent4 = new Intent();
          localIntent4.setClass(this, SimpleLoginUI.class);
          MMWizardActivity.b(this, localIntent4, localIntent3);
          finish();
          continue;
          Intent localIntent1 = getIntent();
          localIntent1.setClass(this, ContactsSyncUI.class);
          Intent localIntent2 = new Intent();
          localIntent2.setClass(this, SimpleLoginUI.class);
          localIntent2.putExtra("accountAuthenticatorResponse", this.cIh);
          MMWizardActivity.b(this, localIntent2, localIntent1);
          finish();
          continue;
          aa.e("MicroMsg.ContactsSyncUI", "unkown scene, finish");
        }
        j = i;
      }
  }

  public final void finish()
  {
    if (this.cIh != null)
    {
      if (this.cIi == null)
        break label35;
      this.cIh.onResult(this.cIi);
    }
    while (true)
    {
      this.cIh = null;
      super.finish();
      return;
      label35: this.cIh.onError(4, "canceled");
    }
  }

  protected final int getLayoutId()
  {
    return -1;
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.i("MicroMsg.ContactsSyncUI", "onCreate()");
    vT("");
    int i = getIntent().getIntExtra("wizard_activity_result_code", 0);
    switch (i)
    {
    default:
      aa.e("MicroMsg.ContactsSyncUI", "onCreate, should not reach here, resultCode = " + i);
      finish();
      return;
    case 1:
      finish();
      return;
    case -1:
    case 0:
    }
    FR();
  }

  public final void setAccountAuthenticatorResult(Bundle paramBundle)
  {
    this.cIi = paramBundle;
    finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.accountsync.ui.ContactsSyncUI
 * JD-Core Version:    0.6.2
 */