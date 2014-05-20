.class public final Lcom/tencent/mm/sdk/d/a;
.super Lcom/tencent/mm/sdk/c/a;
.source "SourceFile"


# instance fields
.field public appId:Ljava/lang/String;

.field public fbi:Ljava/lang/String;

.field public fbu:Lcom/tencent/mm/sdk/d/b;

.field public gcc:Ljava/lang/String;

.field public gcd:Ljava/lang/String;

.field public gce:Ljava/lang/String;

.field public gcf:Ljava/lang/String;

.field public gcg:Ljava/lang/String;

.field public gch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/tencent/mm/sdk/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x5

    return v0
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/c/a;->h(Landroid/os/Bundle;)V

    .line 115
    const-string v0, "_wxapi_payreq_appid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->appId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "_wxapi_payreq_partnerid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->fbi:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "_wxapi_payreq_prepayid"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "_wxapi_payreq_noncestr"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gcd:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v0, "_wxapi_payreq_timestamp"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "_wxapi_payreq_packagevalue"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gcf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "_wxapi_payreq_sign"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gcg:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "_wxapi_payreq_extdata"

    iget-object v1, p0, Lcom/tencent/mm/sdk/d/a;->gch:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/tencent/mm/sdk/d/a;->fbu:Lcom/tencent/mm/sdk/d/b;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/mm/sdk/d/a;->fbu:Lcom/tencent/mm/sdk/d/b;

    const-string v1, "_wxapi_payoptions_callback_classname"

    iget-object v2, v0, Lcom/tencent/mm/sdk/d/b;->gci:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_wxapi_payoptions_callback_flags"

    iget v0, v0, Lcom/tencent/mm/sdk/d/b;->gcj:I

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    :cond_0
    return-void
.end method

.method public final i(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/tencent/mm/sdk/c/a;->i(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "_wxapi_payreq_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->appId:Ljava/lang/String;

    .line 133
    const-string v0, "_wxapi_payreq_partnerid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->fbi:Ljava/lang/String;

    .line 134
    const-string v0, "_wxapi_payreq_prepayid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gcc:Ljava/lang/String;

    .line 135
    const-string v0, "_wxapi_payreq_noncestr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gcd:Ljava/lang/String;

    .line 136
    const-string v0, "_wxapi_payreq_timestamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gce:Ljava/lang/String;

    .line 137
    const-string v0, "_wxapi_payreq_packagevalue"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gcf:Ljava/lang/String;

    .line 138
    const-string v0, "_wxapi_payreq_sign"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gcg:Ljava/lang/String;

    .line 139
    const-string v0, "_wxapi_payreq_extdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->gch:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/tencent/mm/sdk/d/b;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/d/b;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/sdk/d/a;->fbu:Lcom/tencent/mm/sdk/d/b;

    .line 142
    iget-object v0, p0, Lcom/tencent/mm/sdk/d/a;->fbu:Lcom/tencent/mm/sdk/d/b;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/sdk/d/b;->i(Landroid/os/Bundle;)V

    .line 143
    return-void
.end method
