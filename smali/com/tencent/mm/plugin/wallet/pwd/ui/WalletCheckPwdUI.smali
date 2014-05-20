.class public Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;
.super Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;
.source "SourceFile"


# instance fields
.field private fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

.field private fdp:Z

.field private fdq:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    .line 45
    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdq:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)Lcom/tencent/mm/plugin/wallet/ui/EditHintView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdq:Z

    return v0
.end method


# virtual methods
.method protected final FR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    sget v0, Lcom/tencent/mm/i;->awT:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v1

    .line 108
    instance-of v2, v1, Lcom/tencent/mm/plugin/wallet/b/c;

    if-eqz v2, :cond_0

    .line 109
    sget v1, Lcom/tencent/mm/n;->bFZ:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 119
    :goto_0
    sget v0, Lcom/tencent/mm/i;->awR:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    .line 120
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    new-instance v1, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/a;-><init>(Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->a(Lcom/tencent/mm/plugin/wallet/ui/l;)V

    .line 157
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {p0, v0, v3, v3}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->a(Landroid/view/View;IZ)V

    .line 158
    return-void

    .line 110
    :cond_0
    instance-of v2, v1, Lcom/tencent/mm/plugin/wallet/b/f;

    if-eqz v2, :cond_1

    .line 111
    sget v1, Lcom/tencent/mm/n;->bGE:I

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->mn(I)V

    .line 112
    sget v1, Lcom/tencent/mm/n;->bGa:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 113
    :cond_1
    instance-of v1, v1, Lcom/tencent/mm/plugin/wallet/b/k;

    if-eqz v1, :cond_2

    .line 114
    sget v1, Lcom/tencent/mm/n;->bGd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 116
    :cond_2
    sget v1, Lcom/tencent/mm/n;->bGb:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected final Vf()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    return v0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/plugin/wallet/c/a;)Z
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x30008

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 162
    const-string v0, "Micromsg.WalletCheckPwdUI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " errCode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errMsg :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-nez p1, :cond_9

    if-nez p2, :cond_9

    .line 164
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/pwd/a/b;

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    const-string v2, "key_pwd1"

    iget-object v3, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 170
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    :goto_0
    move v0, v1

    .line 213
    :goto_1
    return v0

    .line 174
    :cond_1
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    if-eqz v0, :cond_3

    .line 175
    sget v0, Lcom/tencent/mm/n;->bGe:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/base/h;->an(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    .line 176
    invoke-static {p0, v5}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    goto :goto_0

    .line 181
    :cond_3
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/bind/model/i;

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "key_bankcard"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->aoi()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/plugin/wallet/offline/model/OfflinePayResponeFields;->pF(Ljava/lang/String;)Lcom/tencent/mm/plugin/wallet/offline/model/OfflinePayResponeFields;

    move-result-object v3

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v4, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    iget-object v3, v3, Lcom/tencent/mm/plugin/wallet/offline/model/OfflinePayResponeFields;->eWT:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/tencent/mm/plugin/wallet/c/c;->anX()Lcom/tencent/mm/plugin/wallet/c/c;

    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/c/c;->pE(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 189
    :cond_4
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/tencent/mm/plugin/wallet/b/i;->d(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    new-instance v0, Lcom/tencent/mm/plugin/wallet/bind/model/g;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoK()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mm/plugin/wallet/bind/model/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->k(Lcom/tencent/mm/n/x;)V

    goto :goto_0

    .line 192
    :cond_5
    invoke-static {p0, v5}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 193
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    .line 196
    :cond_6
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    goto/16 :goto_0

    .line 198
    :cond_7
    instance-of v0, p4, Lcom/tencent/mm/plugin/wallet/offline/model/a;

    if-eqz v0, :cond_8

    .line 200
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lcom/tencent/mm/storage/e;->set(ILjava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/mm/plugin/wallet/b/h;->e(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 203
    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    goto/16 :goto_0

    .line 208
    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_a

    .line 210
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    :cond_a
    move v0, v2

    .line 213
    goto/16 :goto_1
.end method

.method protected final aoA()V
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    goto :goto_0
.end method

.method public final aoB()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method protected final aoC()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "Micromsg.WalletCheckPwdUI"

    const-string v1, "check pwd "

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoL()V

    .line 88
    return-void
.end method

.method protected final getLayoutId()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/tencent/mm/k;->bbB:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v0, Lcom/tencent/mm/n;->bGc:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->mn(I)V

    .line 59
    invoke-static {p0}, Lcom/tencent/mm/plugin/wallet/b/h;->m(Landroid/app/Activity;)Lcom/tencent/mm/plugin/wallet/b/i;

    move-result-object v0

    .line 60
    iput-boolean v2, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    .line 61
    instance-of v0, v0, Lcom/tencent/mm/plugin/wallet/b/k;

    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "offline_pay"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdq:Z

    .line 63
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdq:Z

    if-eqz v0, :cond_2

    .line 64
    sget v0, Lcom/tencent/mm/n;->bGp:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->mn(I)V

    .line 78
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->FR()V

    .line 82
    :cond_1
    return-void

    .line 66
    :cond_2
    sget v0, Lcom/tencent/mm/n;->bGo:I

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->mn(I)V

    .line 67
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->aoJ()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_bankcard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->ang()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 70
    new-instance v1, Lcom/tencent/mm/plugin/wallet/bind/model/i;

    iget-object v2, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWH:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/mm/plugin/wallet/bind/model/Bankcard;->eWT:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/tencent/mm/plugin/wallet/bind/model/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->k(Lcom/tencent/mm/n/x;)V

    .line 71
    iput-boolean v3, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdp:Z

    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->gI(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onDestroy()V

    .line 102
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->finish()V

    .line 222
    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/pwd/ui/WalletCheckPwdUI;->fdo:Lcom/tencent/mm/plugin/wallet/ui/EditHintView;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/wallet/ui/EditHintView;->UP()V

    .line 96
    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/plugin/wallet/ui/WalletBaseUI;->onResume()V

    .line 97
    return-void
.end method
