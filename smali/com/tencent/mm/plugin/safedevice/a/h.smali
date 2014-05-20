.class final Lcom/tencent/mm/plugin/safedevice/a/h;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic dZY:Lcom/tencent/mm/plugin/safedevice/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/safedevice/a/f;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/mm/plugin/safedevice/a/h;->dZY:Lcom/tencent/mm/plugin/safedevice/a/f;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/b/e;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateLocalSafeDevice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    check-cast p1, Lcom/tencent/mm/c/a/hm;

    .line 63
    iget-object v0, p1, Lcom/tencent/mm/c/a/hm;->bRg:Lcom/tencent/mm/c/a/hn;

    iget-object v0, v0, Lcom/tencent/mm/c/a/hn;->bRh:Lcom/tencent/mm/protocal/a/rt;

    invoke-static {v0}, Lcom/tencent/mm/plugin/safedevice/a/e;->a(Lcom/tencent/mm/protocal/a/rt;)V

    .line 74
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/b/e;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateLocalVerifySwitch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    check-cast p1, Lcom/tencent/mm/c/a/ho;

    .line 66
    iget-object v0, p1, Lcom/tencent/mm/c/a/ho;->bRi:Lcom/tencent/mm/c/a/hp;

    iget-boolean v0, v0, Lcom/tencent/mm/c/a/hp;->bRj:Z

    iget-object v1, p1, Lcom/tencent/mm/c/a/ho;->bRi:Lcom/tencent/mm/c/a/hp;

    iget-boolean v1, v1, Lcom/tencent/mm/c/a/hp;->bRk:Z

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/safedevice/a/e;->j(ZZ)V

    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/b/e;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetSafeDeviceName"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    check-cast p1, Lcom/tencent/mm/c/a/cq;

    .line 69
    iget-object v0, p1, Lcom/tencent/mm/c/a/cq;->bNU:Lcom/tencent/mm/c/a/cs;

    iget-object v1, p1, Lcom/tencent/mm/c/a/cq;->bNT:Lcom/tencent/mm/c/a/cr;

    iget-object v1, v1, Lcom/tencent/mm/c/a/cr;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/mm/plugin/safedevice/a/e;->aG(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/c/a/cs;->bNV:Ljava/lang/String;

    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/b/e;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetSafeDeviceType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    check-cast p1, Lcom/tencent/mm/c/a/ct;

    .line 72
    iget-object v0, p1, Lcom/tencent/mm/c/a/ct;->bNW:Lcom/tencent/mm/c/a/cu;

    invoke-static {}, Lcom/tencent/mm/plugin/safedevice/a/e;->Zs()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/c/a/cu;->bNX:Ljava/lang/String;

    goto :goto_0
.end method
