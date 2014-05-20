.class public Lcom/tencent/mm/plugin/shootstub/communicate/ReqReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(ILcom/tencent/mm/plugin/shootstub/a/a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    invoke-interface {p1, v0}, Lcom/tencent/mm/plugin/shootstub/a/a;->h(Landroid/os/Bundle;)V

    .line 101
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 102
    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mm.plugin.shoot.remote.RemoteNetSceneMgr$RespReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 103
    const-string v2, "remote_request_type_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v2, "remote_event_id_key"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 107
    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/al;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private static l(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    .line 53
    const-string v0, "remote_event_id_key"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 54
    if-gtz v1, :cond_1

    .line 55
    const-string v0, "MicroMsg.ReqReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "edw dealEvent fail, invalid eventId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "MicroMsg.ReqReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dealEvent, eventId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 62
    :pswitch_0
    new-instance v0, Lcom/tencent/mm/plugin/shootstub/a/m;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/shootstub/a/m;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "RemoteEventGetUserInfo_result_username"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/plugin/shootstub/a/m;->username:Ljava/lang/String;

    const-string v3, "RemoteEventGetUserInfo_result_nickname"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/mm/plugin/shootstub/a/m;->crH:Ljava/lang/String;

    const-string v3, "RemoteEventGetUserInfo_result_displayName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/shootstub/a/m;->cTv:Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/shootstub/a/m;->username:Ljava/lang/String;

    .line 66
    invoke-static {}, Lcom/tencent/mm/model/v;->tj()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/plugin/shootstub/a/m;->crH:Ljava/lang/String;

    .line 67
    invoke-static {v1, v0}, Lcom/tencent/mm/plugin/shootstub/communicate/ReqReceiver;->a(ILcom/tencent/mm/plugin/shootstub/a/a;)V

    goto :goto_0

    .line 72
    :pswitch_1
    new-instance v2, Lcom/tencent/mm/plugin/shootstub/a/l;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/shootstub/a/l;-><init>()V

    .line 73
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/plugin/shootstub/a/l;->i(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, v2, Lcom/tencent/mm/plugin/shootstub/a/l;->etS:Ljava/util/ArrayList;

    .line 76
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lcom/tencent/mm/storage/i;->rr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-static {v0}, Lcom/tencent/mm/m/c;->dW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_2
    iput-object v3, v2, Lcom/tencent/mm/plugin/shootstub/a/l;->eqW:Ljava/util/ArrayList;

    .line 87
    iput-object v4, v2, Lcom/tencent/mm/plugin/shootstub/a/l;->etT:Ljava/util/ArrayList;

    .line 88
    invoke-static {v1, v2}, Lcom/tencent/mm/plugin/shootstub/communicate/ReqReceiver;->a(ILcom/tencent/mm/plugin/shootstub/a/a;)V

    goto/16 :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 32
    const-string v0, "remote_request_type_key"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    if-gtz v0, :cond_0

    .line 34
    const-string v1, "MicroMsg.ReqReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "edw onReceive fail, invalid type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string v1, "MicroMsg.ReqReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "edw onReceive, type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-static {p2}, Lcom/tencent/mm/plugin/shootstub/communicate/ReqReceiver;->l(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
